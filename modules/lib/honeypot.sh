#!/bin/bash
# author API key Hgqwf9dHMIE157PNCeqVJc6TVvlyGKiP
YELLOW=$(tput setaf 3)
GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
BLUE=$(tput setaf 4)
STAND=$(tput sgr 0)
BOLD=$(tput bold)


#echo "$GREEN"
#echo " ▒█░▒█ ▒█▀▀█ ▒█▄  ▒█ ▒█▀▀▀ ▒█░ ▒█ ▒█▀▀█ ▒█▀▀█ ▀▀█▀▀ ▒█▀▀█ "
#echo " ▒█▄▄█ ▒█░▒█ ▒█ ▀▄▒█ ▒█▀▀▀ ▒█▄▄▄█ ▒█▄▄▀ ▒█░▒█ ░▒█░░   ▄▀▀ "
#echo " ▒█░▒█ ▒█▄▄█ ▒█   ▀█ ▒█▄▄▄  ░▒█░░ ▒█    ▒█▄▄█ ░▒█░░   ▄   "
#echo "$YELLOW by-$BOLD rickazu_bibps$STAND"
#echo -e "$BLUE$BOLD Input IP for Check : $GREEN\c"
#read IP

#if [ "$IP" = "" ];then
#    echo "$RED$BOLD Don't Leet IP is Blank.. $STAND"
#    exit 0
#fi

sub="$1"

if [ -z $sub ]; then
    echo -e "Missing IP"
    echo -e "$0 1.1.1.1"
    exit
fi

IP=`timeout 3 ping $sub -c 1 | head -n1 | grep PING | cut -d '(' -f 2 | cut -d ')' -f 1`

if [ "$IP" = "$IP" ];then
    for x in `curl -s -k https://api.shodan.io/labs/honeyscore/$IP?key=C23OXE0bVMrul2YeqcL7zxb6jZ4pj2by`
    do
    if [ "$x" = "0.0" ];then
        echo "[+]$YELLOW$BOLD $sub$GREEN Not HoneyPot $STAND"
        exit 0
    fi
    if [ "$x" = "0.1" ];then
        echo "[+]$YELLOW$BOLD $sub$GREEN Not HoneyPot $STAND"
        exit 0
    fi
    if [ "$x" = "0.2" ];then
        echo "[+]$YELLOW$BOLD $sub$GREEN Not HoneyPot $STAND"
        exit 0
    fi
    if [ "$x" = "0.3" ];then
        echo "[+]$YELLOW$BOLD $sub$GREEN Not HoneyPot $STAND"
        exit 0
    fi
    if [ "$x" = "0.4" ];then
        echo "[+]$YELLOW$BOLD $sub$GREEN Not HoneyPot $STAND"
        exit 0
    fi
    if [ "$x" = "0.5" ];then
        echo "[+]$YELLOW$BOLD $sub$GREEN Not HoneyPot $STAND"
        exit 0
    fi
    if [ "$x" = "0.6" ];then
        echo "[+]$YELLOW$BOLD $sub$BLUE Maybe HoneyPot $STAND"
        exit 0
    fi
    if [ "$x" = "0.7" ];then
        echo "[+]$YELLOW$BOLD $sub$BLUE Maybe HoneyPot $STAND"
        exit 0
    fi
    if [ "$x" = "0.8" ];then
        echo "[+]$YELLOW$BOLD $sub$RED Are HoneyPot $STAND"
        exit 0
    fi
    if [ "$x" = "0.9" ];then
        echo "[+]$YELLOW$BOLD $sub$RED Are HoneyPot $STAND"
        exit 0
    fi
    if [ "$x" = "0.10" ];then
        echo "[+]$YELLOW$BOLD $sub$RED Are HoneyPot $STAND"
        exit 0
    fi
    if [ "$x" = "1.0" ];then
        echo "[+]$YELLOW$BOLD $sub$RED Are HoneyPot $STAND"
        exit 0
    fi
    if [ "$x" = "1" ];then
        echo "[+]$GREEN$BOLD $sub$RED Are HoneyPot $STAND"
        exit 0
    fi
    if [ "$x" != 0 ];then
        echo "[+]$RED$BOLD No information available for that$STAND$YELLOW $sub.$STAND"
        exit 0
    fi
    done
fi
