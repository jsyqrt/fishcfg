#!/bin/bash 

HOME="/home/`whoami`"
ConfigFile="$HOME/.config/ss/bg.json"

function launchProxy {

    
    ip=127.0.0.1
    port=8118
    proxy="http://$ip:$port"

    # launch shadowsocks local daemon and privoxy service.

    sudo sslocal -c $ConfigFile -d start
    sudo service privoxy start

    # set global variables.
    
    fish -c "set -Ux http_proxy $proxy"
    fish -c "set -Ux https_proxy $proxy"
    fish -c "set -Ux ftp_proxy $proxy"

    # set gnome settings.

    gsettings set org.gnome.system.proxy.socks host "$ip"
    gsettings set org.gnome.system.proxy.socks port $port

    gsettings set org.gnome.system.proxy mode 'manual'

    # set applications settings.

    git config --global http.proxy "$proxy"

}

function stopProxy {

    # stop shadowsocks local daemon and privoxy service.
    sudo pkill sslocal
    sudo service privoxy stop

    # set global variables.

    fish -c "set -Ux http_proxy ''"
    fish -c "set -Ux https_proxy ''"
    fish -c "set -Ux ftp_proxy ''"

    # set gnome settings.

    gsettings set org.gnome.system.proxy mode 'none'

    # set applications settings.

    git config --global http.proxy ""

}

function helpInfo {
    echo "usage: ./proxy.sh [on|off]"
}


function main {

    if [ ${BASH_ARGV[0]} = "on" ]
    then

        launchProxy
        echo "now on."

    elif [ ${BASH_ARGV[0]} = "off" ]
    then

        stopProxy
        echo "now off."

    else

        helpInfo

    fi
}

main
