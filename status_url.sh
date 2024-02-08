#!/bin/bash

# Função para exibir mensagens de erro
show_error() {
    echo "Error: $1"
    exit 1
}

# Verifica se uma URL foi fornecida como argumento
if [ $# -ne 1 ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

url=$1

# Formata a saída do curl comum
curl_format='{
    time_namelookup: %{time_namelookup},
    time_connect: %{time_connect},
    time_appconnect: %{time_appconnect},
    time_pretransfer: %{time_pretransfer},
    time_redirect: %{time_redirect},
    time_starttransfer: %{time_starttransfer},
    time_total: %{time_total},
    speed_download: %{speed_download},
    speed_upload: %{speed_upload},
    remote_ip: %{remote_ip},
    remote_port: %{remote_port},
    local_ip: %{local_ip},
    local_port: %{local_port},
    size_download: %{size_download},
    size_upload: %{size_upload},
    num_connects: %{num_connects},
    redirect_url: %{redirect_url},
    ssl_verify_result: %{ssl_verify_result},
    http_code: %{http_code},
    content_type: %{content_type},
    errormsg: %{errormsg},
    exitcode: %{exitcode},
    filename_effective: %{filename_effective},
    ftp_entry_path: %{ftp_entry_path},
    http_connect: %{http_connect},
    http_version: %{http_version},
    method: %{method},
    num_headers: %{num_headers},
    num_redirects: %{num_redirects},
    proxy_ssl_verify_result: %{proxy_ssl_verify_result},
    referer: %{referer},
    response_code: %{response_code},
    scheme: %{scheme},
    size_header: %{size_header},
    size_request: %{size_request},
    stderr: %{stderr},
    stdout: %{stdout},
    url: %{url}
}'

# Executa o comando curl e formata a saída como JSON
curl_output=$(curl -w "$curl_format" -o /dev/null -s "$url") || show_error "Failed to execute curl"

# Exibe o resultado
echo "$curl_output"

