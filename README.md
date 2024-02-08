Description details to anotation key LLD return the web request 
Used:
    status_url.sh <URL>

Zabbix:
    Type key `External Script`:
        staus_url[<URL>]


Time:

    time_namelookup: Time, in seconds, that curl takes to resolve the host name.
    time_connect: Time, in seconds, that curl takes to establish the TCP connection.
    time_appconnect: Time, in seconds, that curl takes to establish the SSL connection (after the host name resolution and TCP connection have been made).
    time_pretransfer: Time, in seconds, from the start until curl begins transferring data.
    time_redirect: Time, in seconds, spent on redirects, if any.
    time_starttransfer: Time, in seconds, from the start until the first byte is transferred.
    time_total: The total time, in seconds, that curl took for the operation.

Speed:

    speed_download: The average download speed, in bytes per second, calculated by curl.
    speed_upload: The average upload speed, in bytes per second, calculated by curl.

IP Address:

    remote_ip: The remote host's IP address.
    remote_port: The remote port.
    local_ip: The local IP address.
    local_port: The local port.

Size:

    size_download: The total size, in bytes, of the downloaded content.
    size_upload: The total size, in bytes, of the uploaded content.

Connections:

    num_connects: The total number of connections.

Redirection:

    redirect_url: The URL to which the request was redirected, if any.

Security:

    ssl_verify_result: The result of SSL certificate verification.

HTTP:

    http_code: The HTTP status code returned by the request.

