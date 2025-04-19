#!/bin/bash

# ---------------------------------------------
# Ferramenta: FloodMan - Versão 0.2
# Autor: domcabral9
# ---------------------------------------------
# PRÉ-REQUISITOS:
# - hping3
# - tcpdump
# - netcat-traditional
# Instale com:
# sudo apt update
# sudo apt install hping3 tcpdump netcat-traditional
# ---------------------------------------------

trap "echo -e '\nInterrompido pelo usuário.'; exit" SIGINT

# ASCII BANNER
cat << "EOF"
   "!!!FOI O KALI LINUX QUE ME DEU!!!
    FOI O KALI LINUX QUE ME DEU!!! FOI O KALI LINUX QUE ME DEU!!!"
              \
 _____         \
| | | |/\       \
|_|_|_|\ \       \
|        /
\_______/            (  ( ) ) ( )  )
 \______\           ( ( ( ( )  )  ) )
 \       \         ( ( )) ) (   ) ( ( )
  \       \        ( (__.-.___.-.__) )
   \       \        /---._.---._.--- \
    \       \       \||   '  \'    ||/
     \       \       |||     _)   |||
      \       \       ||||///\\\||||
       \       \_____/ ||||\__/||||\___
        \             \ |||||||||| /   \
         \             \  ||||||  /     \
          \_____
EOF

banner()
{
   echo "Modo de Uso"
   echo "./script.sh opcao"
   echo "./script.sh -a"
   echo ""
   echo " -a - Portscan hping3"
   echo " -b - PingSweep hping3"
   echo " -c - Portscan nc"
   echo " -d - PingSweep nc"
   echo " -e - PingSweep /dev/tcp"
   echo " -f - Portscan /dev/tcp"
}

banner2()
{
  echo "FloodMan - Versão 0.2"
  echo "By domcabral9"
}
banner2

if [ "${1}" = "-a" ]; then
    echo "PortScan"
    echo
    echo "Digite IP - Ex: 192.168.0.1"
    read ip
    echo "Digite a porta inicial Ex: 22"
    read portai
    echo "Digite a porta final Ex: 1000"
    read portaf
    sudo hping3 $ip -S --scan $portai-$portaf

elif [ "${1}" = "-b" ]; then
    echo "PingSweep com hping3"
    echo "Digite IP da Rede - Ex: 192.168.0"
    read ip
    for i in $(seq 1 254); do
        if [ -n "$(sudo hping3 -1 -c 1 $ip.$i 2>/dev/null | grep 'ttl')" ]; then echo "$ip.$i"; fi
    done

elif [ "${1}" = "-c" ]; then
    echo "Digite o IP - Ex: 192.168.0.1"
    read ip
    echo "Digite a porta inicial - Ex: 1"
    read portai
    echo "Digite a porta final - Ex: 6500"
    read portaf
    nc -v -n -z $ip $portai-$portaf

elif [ "${1}" = "-d" ]; then
    echo "PingSweep com netcat"
    echo "Digite uma Rede/24 - Ex: 192.168.0"
    read ip
    echo "Digite uma porta - Ex: 80"
    read porta
    for i in $(seq 1 254); do
        nc -zvw 1 $ip.$i $porta 2>/dev/null && echo "Host $ip.$i - $porta up"
    done

elif [ "${1}" = "-e" ]; then
    echo "PingSweep com /dev/tcp"
    echo "Digite o IP da Rede - Ex: 192.168.0"
    read ip
    echo "Digite a porta de pesquisa - Ex: 80"
    read porta
    for i in $(seq 1 254); do timeout 0.5 echo -n 2>/dev/null < "/dev/tcp/$ip.$i/$porta" && echo "Host: $ip.$i ativo"; done

elif [ "${1}" = "-f" ]; then
    echo "PortScan com /dev/tcp"
    echo "Digite o IP - Ex: 192.168.0.1"
    read ip
    echo "Digite a porta inicial - Ex: 1"
    read portai
    echo "Digite a porta final - Ex: 6500"
    read portaf
    for i in $(seq $portai $portaf); do timeout 0.5 echo -n 2>/dev/null < "/dev/tcp/$ip/$i" && echo "$i open"; done

elif [ "${1}" = "-g" ]; then
    echo ""
else
    banner
fi
