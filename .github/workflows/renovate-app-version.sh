#!/bin/bash
# This script copies the version from docker-compose.yml to config.json.

app_name=$1
old_version=$2

# 定义关联数组，将应用名称与其对应的 keys 关联起来
declare -A app_keys
app_keys=(["immich"]="immich-server immich-machine-learning" ["stream-rec"]="stream-rec-backend stream-rec-frontend" ["rsshub"]="rsshub")

echo "Processing app: $app_name, old version: $old_version"

# Find all docker-compose files under apps/$app_name (there should be only one)
docker_compose_files=$(find apps/$app_name/$old_version -name docker-compose.yml)

process_image() {
    local image=$1

    # Only apply changes if the format is <image>:<version>
    if [[ "$image" == *":"* ]]; then
        version=$(cut -d ":" -f2- <<< "$image")

        echo "Extracted version: $version"

        # Trim the "v" prefix
        trimmed_version=${version/#"v"}

        echo "Trimmed version: $trimmed_version"

        # Remove any suffixes (like -ffmpeg) for versioning purposes
        cleaned_version=$(echo $trimmed_version | grep -oE '^[0-9]+(\.[0-9]+){0,4}')

        echo "Cleaned version: $cleaned_version"

        # Handle special versions with dates and other formats
        if [[ -z "$cleaned_version" && "$trimmed_version" =~ ^RELEASE\.[0-9]{4}-[0-9]{2}-[0-9]{2} ]]; then
            # Handle minio version format RELEASE.YYYY-MM-DDTHH-MM-SSZ
            cleaned_version=$(echo $trimmed_version | grep -oE '[0-9]{4}-[0-9]{2}-[0-9]{2}')
        fi

        echo "Final version: $cleaned_version"
    fi
}

for docker_compose_file in $docker_compose_files
do
    echo "Processing docker-compose file: $docker_compose_file"

    # 判断 app_name 是否在关联数组中
    if [[ -n "${app_keys[$app_name]}" ]]; then
        echo "$app_name is in the app_keys list."
        # 获取对应的 keys
        IFS=' ' read -r -a keys <<< "${app_keys[$app_name]}"
        for key in "${keys[@]}"; do
            echo "Processing key: $key"
            first_service=$(yq ".services | keys | .[] | select(. == \"$key\")" $docker_compose_file)

            if [[ -n "$first_service" ]]; then
                image=$(yq .services.$first_service.image $docker_compose_file)
                echo "Found image for service $first_service: $image"

                # 进行后续处理
                process_image "$image"
            else
                echo "Key $key not found in $docker_compose_file"
            fi
        done

        # 在循环完毕后执行版本移动操作
        if [[ -n "$cleaned_version" ]]; then
            mv apps/$app_name/$old_version apps/$app_name/$cleaned_version
            echo "Moved $old_version to $cleaned_version"
        else
            echo "Could not determine version for image: $image"
        fi
    else
        echo "$app_name is not in the app_keys list. Processing first service normally."
        first_service=$(yq '.services | keys | .[0]' $docker_compose_file)

        image=$(yq .services.$first_service.image $docker_compose_file)
        echo "Found image: $image"

        # 进行后续处理
        process_image "$image"

        # 在处理第一个服务后执行版本移动操作
        if [[ -n "$cleaned_version" ]]; then
            mv apps/$app_name/$old_version apps/$app_name/$cleaned_version
            echo "Moved $old_version to $cleaned_version"
        else
            echo "Could not determine version for image: $image"
        fi
    fi
done
