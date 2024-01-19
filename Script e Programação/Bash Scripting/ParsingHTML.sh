#!/bin/bash
#O código abaixo realiza o parsing de uma página HTML para extrair URLs
if [ "$1" == "" ]; then
    echo "PARSING HTML"
    echo "Modo de uso: $0 REDE"
    echo "Exemplo: $0 www.sitealvo.com"
else
    wget -O index.html "$1" 2> /dev/null
    cat index.html | grep href | cut -d '"' -f 2 | grep http | cut -d '/' -f 3 | sort -u > lista
    while read -r url; do
        ip=$(host "$url" | grep 'has address' | awk '{print $4}')
        if [ -n "$ip" ]; then
            echo -e "\e[32m$url\e[0m: \e[34m$ip\e[0m"
        else
            echo -e "\e[31m$url\e[0m: Nenhum endereço encontrado"
        fi
    done < lista | column -t
fi
