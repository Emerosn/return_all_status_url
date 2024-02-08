Improved Description of the LLD Annotations Key

This document details the information returned by the status_url.sh script used in the LLD annotation key status_url for Zabbix.

Key: status_url

Type: External Script

Description: This key utilizes the status_url.sh script to execute a web request and capture details about the response.

Returned Annotations:
Tempo:

    time_namelookup: Tempo (em segundos) para resolver o nome do host.
    time_connect: Tempo (em segundos) para estabelecer a conexão TCP.
    time_appconnect: Tempo (em segundos) para estabelecer a conexão SSL (após a resolução do nome do host e a conexão TCP).
    time_pretransfer: Tempo desde o início até o início da transferência de dados (em segundos).
    time_redirect: Tempo gasto em redirecionamentos (se houver, em segundos).
    time_starttransfer: Tempo desde o início até a primeira transferência de byte (em segundos).
    time_total: Tempo total (em segundos) para toda a operação.

Velocidade:

    speed_download: Velocidade média de download (em bytes/segundo) calculada pelo curl.
    speed_upload: Velocidade média de upload (em bytes/segundo) calculada pelo curl.

Endereço IP:

    remote_ip: Endereço IP do host remoto.
    remote_port: Porta utilizada pelo host remoto.
    local_ip: Endereço IP local utilizado para a conexão.
    local_port: Porta local utilizada para a conexão.

Tamanho:

    size_download: Tamanho total (em bytes) do conteúdo baixado.
    size_upload: Tamanho total (em bytes) do conteúdo carregado.

Conexões:

    num_connects: Número total de conexões estabelecidas.

Redirecionamento:

    redirect_url: URL para a qual a requisição foi redirecionada (se houver).

Segurança:

    ssl_verify_result: Resultado da verificação do certificado SSL.

HTTP:

    http_code: Código de status HTTP retornado pela requisição.

Anotações Adicionais:

    content_type: Tipo de conteúdo da resposta.
    errormsg: Mensagem de erro, se alguma tiver ocorrido durante a requisição.
    exitcode: Código de saída do script status_url.sh.
    filename_effective: Nome de arquivo efetivo utilizado para download (se aplicável).
    ftp_entry_path: Caminho de entrada utilizado para conexões FTP (se aplicável).
    http_connect: Tempo (em segundos) para se conectar ao servidor HTTP.
    http_version: Versão HTTP utilizada na requisição.
    method: Método HTTP utilizado na requisição.
    num_headers: Número de cabeçalhos na resposta.
    num_redirects: Número de redirecionamentos encontrados.
    onerror: Comportamento do script em caso de erro (opcional).
    proxy_ssl_verify_result: Resultado da verificação do certificado SSL para o proxy (se utilizado).
    referer: Cabeçalho Referer enviado na requisição.
    response_code: Código de resposta interna retornado pelo curl.
    scheme: Esquema utilizado na URL (e.g., http, https).
    size_header: Tamanho dos cabeçalhos da resposta (em bytes).
    size_request: Tamanho dos dados da requisição (em bytes).
    stderr: Saída de erro padrão do script status_url.sh.
    stdout: Saída padrão do script status_url.sh.
    url: URL completa utilizada na requisição.
    url.scheme: Parte do esquema da URL.
    url.user: Parte do nome de usuário da URL (se presente).
    url.password: Parte da senha da URL (se presente).
    url.options: Parte das opções da URL (se presente).
    url.host: Parte do nome do host da URL.
    url.port: Número da porta da URL (se presente).
    url.path: Caminho da URL.
    url.query: String de consulta da URL (se presente).
    url.fragment: Fragmento da URL (se presente).


