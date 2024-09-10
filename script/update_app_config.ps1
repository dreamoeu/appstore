$appsDir = "C:\Users\ms\Documents\JetBrains\IdeaProjects\appstore\apps"
# 遍历 apps 目录中的每个子目录
Get-ChildItem -Path $appsDir -Directory | ForEach-Object {
    $appDir = $_.FullName
    $dataFile = Join-Path $appDir "data.yml"

    # 检查 data.yml 文件是否存在
    if (Test-Path $dataFile) {
        # 读取文件内容，指定编码为 UTF-8
        $lines = Get-Content $dataFile -Encoding UTF8

        # 查找 "additionalProperties:" 行的索引
        $index = $lines.IndexOf("additionalProperties:")

        if ($index -ne -1) {
            # 只保留从 "additionalProperties:" 行开始的内容
            $newContent = $lines[$index..($lines.Length - 1)]

            # 将新的内容写回到文件中，指定编码为 UTF-8
            Set-Content -Path $dataFile -Value $newContent -Encoding UTF8
            Write-Host "处理完成: $dataFile"
        } else {
            Write-Host "未找到 'additionalProperties:' 行: $dataFile"
        }
    } else {
        Write-Host "文件不存在: $dataFile"
    }
}