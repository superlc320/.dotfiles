function proxy_on() {
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:1087"
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export HTTP_PROXY=$http_proxy
    export HTTPS_PROXY=$http_proxy
    export FTP_PROXY=$http_proxy
    export RSYNC_PROXY=$http_proxy
    echo "proxy is opened"
}
function proxy_off() {
    unset http_proxy
    unset https_proxy
    unset ftp_proxy
    unset rsync_proxy
    echo "proxy is closed"
}
function proxy_ls() {
    echo http_proxy = $http_proxy
    echo https_proxy = $https_proxy
    echo ftp_proxy = $ftp_proxy
    echo rsync_proxy = $rsync_proxy
}

proxy_on

export PATH="/usr/local/opt/openjdk/bin:$PATH"

alias config_ycm="~/.vim/bundle/YCM-Generator/config_gen.py"

