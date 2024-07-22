#!/bin/bash
# This script copies the version from docker-compose.yml to config.json.

app_name=$1
old_version=$2

# find all docker-compose files under apps/$app_name (there should be only one)
docker_compose_files=$(find apps/$app_name/$old_version -name docker-compose.yml)

for docker_compose_file in $docker_compose_files
do
    # Assuming that the app version will be from the first docker image
    first_service=$(yq '.services | keys | .[0]' $docker_compose_file)

    image=$(yq .services.$first_service.image $docker_compose_file)

    # Only apply changes if the format is <image>:<version>
    if [[ "$image" == *":"* ]]; then
        version=$(cut -d ":" -f2- <<< "$image")

        # Trim the "v" prefix
        trimmed_version=${version/#"v"}

        # Handle special versions with dates and other formats
        if [[ "$trimmed_version" =~ ^[0-9]+(\.[0-9]+){0,3}$ ]]; then
            # Extract the version part which can be 1 to 4 segments
            trimmed_version=$(echo $trimmed_version | grep -oE '^[0-9]+(\.[0-9]+){0,4}')
        elif [[ "$trimmed_version" =~ ^RELEASE\.[0-9]{4}-[0-9]{2}-[0-9]{2} ]]; then
            # Handle minio version format RELEASE.YYYY-MM-DDTHH-MM-SSZ
            trimmed_version=$(echo $trimmed_version | grep -oE '[0-9]{4}-[0-9]{2}-[0-9]{2}')
        fi

        # Move to the new versioned directory
        mv apps/$app_name/$old_version apps/$app_name/$trimmed_version
    fi
done
