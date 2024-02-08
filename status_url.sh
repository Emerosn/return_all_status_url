#!/bin/bash

# Check if a URL is provided as an argument
if [ $# -ne 1 ]; then
    echo Usage: $0 \<url\>
    exit 1
fi

url=$1

# Function to display error messages
show_error() {
    echo Error: $1
    exit 1
}

# Execute curl command and format output as JSON
curl_output=$(curl -w '{
    data: {
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
        http_code: %{http_code}
    }
}' -o /dev/null -s "$url") || show_error Failed to execute curl

# Display the result
echo "$curl_output"

