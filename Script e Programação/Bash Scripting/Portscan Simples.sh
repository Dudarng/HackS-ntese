#!/bin/bash
# Scan simples de host de determinada porta
if [ "$1" == "" ]
		echo "PORTSCAN NETWORK"
		echo "Modo de uso: $0 REDE PORTA"
		echo "Exemplo: $0 172.16.1 80"
else
# Loop através dos IPs de 1 a 254
for ip in {1..254};
do
# Use hping para enviar um pacote TCP e filtrar os resultados
hping -s -p $2 -c 1 $1.$ip 2> /dev/null | grep "flags=SA" | cut -d " " -f 2 | cut -d "=" -f 2;
done
fi
