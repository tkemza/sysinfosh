#!/bin/bash

# Author    :   tkemza
# Github    :   https://github.com/tkemza
# MIT LICENSE (c) 2024 [tkemza]


banner() {

    ## ANSI colors (FG & BG)
    RED="$(printf '\033[31m')"  
    GREEN="$(printf '\033[32m')"  
    ORANGE="$(printf '\033[33m')"  
    BLUE="$(printf '\033[34m')"
    MAGENTA="$(printf '\033[35m')"  
    CYAN="$(printf '\033[36m')"  
    WHITE="$(printf '\033[37m')" 
    BLACK="$(printf '\033[30m')"
    REDBG="$(printf '\033[41m')"  
    GREENBG="$(printf '\033[42m')"  
    ORANGEBG="$(printf '\033[43m')"  
    BLUEBG="$(printf '\033[44m')"
    MAGENTABG="$(printf '\033[45m')"  
    CYANBG="$(printf '\033[46m')"  
    WHITEBG="$(printf '\033[47m')" 
    BLACKBG="$(printf '\033[40m')"
    RESETBG="$(printf '\e[0m\n')"
    
cat <<- EOF 
            ${BLUE}
               ____         ____     ___   
              / __/_ _____ /  _/__  / _/__ 
             _\ \/ // (_-<_/ // _ \/ _/ _ '
            /___/\_, /___/___/_//_/_/ \___/
                /___/ 
                ${RESETBG}
                ${ORANGE}                     
    ╔────────────────────────────────────────────────╗
    |               Author: Tkemza                   |
    | PRD: Tool made by GreyHat organization ZeroByte|
    ╚────────────────────────────────────────────────╝
        
EOF

}

## Reset terminal colors
reset_color() {
	tput sgr0   # reset attributes
	tput op     # reset color
	return
}

main() {

    ## ANSI colors (FG & BG)
    RED="$(printf '\033[31m')"  
    GREEN="$(printf '\033[32m')"  
    ORANGE="$(printf '\033[33m')"  
    BLUE="$(printf '\033[34m')"
    MAGENTA="$(printf '\033[35m')"  
    CYAN="$(printf '\033[36m')"  
    WHITE="$(printf '\033[37m')" 
    BLACK="$(printf '\033[30m')"
    REDBG="$(printf '\033[41m')"  
    GREENBG="$(printf '\033[42m')"  
    ORANGEBG="$(printf '\033[43m')"  
    BLUEBG="$(printf '\033[44m')"
    MAGENTABG="$(printf '\033[45m')"  
    CYANBG="$(printf '\033[46m')"  
    WHITEBG="$(printf '\033[47m')" 
    BLACKBG="$(printf '\033[40m')"
    RESETBG="$(printf '\e[0m\n')"

    if ! command -v git &> /dev/null; then
        sudo apt install -y git
    fi
    sleep 1
    clear
    sleep 1

    while true; do
        banner
        echo ""
        { printf "${CYAN}[01]${RESETBG} Request HostName"; reset_color; echo ""; }
        { printf "${CYAN}[02]${RESETBG} Print Uptime"; reset_color; echo ""; }
        { printf "${CYAN}[03]${RESETBG} Print Memory Usage"; reset_color; echo ""; }
        { printf "${CYAN}[04]${RESETBG} Print Disk Usage"; reset_color; echo ""; }
        { printf "${CYAN}[05]${RESETBG} Top Processes"; reset_color; echo ""; }
        { printf "${CYAN}[06]${RESETBG} NeoFetch"; reset_color; echo ""; }
        { printf "${CYAN}[00]${RESETBG} Exit"; reset_color; echo ""; }
        echo ""
        echo ""
        read -p "${GREEN}[${RESETBG}↪${GREEN}]${RESETBG} Select an option : " RPY
        
        case $RPY in
            1 | 01)
                sleep .5
                { printf "${CYAN}└─[${RESETBG}✔${CYAN}]${RESETBG} HostName: $(hostname)"; reset_color; echo ""; }
                echo ""
                read -p "${CYAN}[${RESETBG}ℹ️${CYAN}]${RESETBG} Do you want to exit? [y] " rpy
                if [[ "$rpy" -eq "y" ]]; then
                    clear
                fi
                ;;
            2 | 02)
                sleep .5
                { printf "${CYAN}└─[${RESETBG}✔${CYAN}]${RESETBG} Uptime: $(uptime -p)"; reset_color; echo ""; }
                echo ""
                read -p "${CYAN}[${RESETBG}ℹ️${CYAN}]${RESETBG} Do you want to exit? [y] " rpy
                if [[ "$rpy" -eq "y" ]]; then
                    clear
                fi
                ;;
            3 | 03)
                sleep .5
                { printf "${CYAN}└─[${RESETBG}✔${CYAN}]${RESETBG} Memory Usage: "; free -h; reset_color; echo ""; }
                echo ""
                read -p "${CYAN}[${RESETBG}ℹ️${CYAN}]${RESETBG} Do you want to exit? [y] " rpy
                if [[ "$rpy" -eq "y" ]]; then
                    clear
                fi
                ;;
            4 | 04)
                sleep .5
                { printf "${CYAN}└─[${RESETBG}✔${CYAN}]${RESETBG} Disk Usage: "; df -h; reset_color; echo ""; }
                echo ""
                read -p "${CYAN}[${RESETBG}ℹ️${CYAN}]${RESETBG} Do you want to exit? [y] " rpy
                if [[ "$rpy" -eq "y" ]]; then
                    clear
                fi
                ;;
            5 | 05)
                sleep .5
                { printf "${CYAN}└─[${RESETBG}✔${CYAN}]${RESETBG} Top Processes: "; ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 10; reset_color; echo ""; }
                echo ""
                read -p "${CYAN}[${RESETBG}ℹ️${CYAN}]${RESETBG} Do you want to exit? [y] " rpy
                if [[ "$rpy" -eq "y" ]]; then
                    clear
                fi
                ;;
            6 | 06)
                sleep .5
                if ! command -v neofetch &> /dev/null; then
                    sudo apt install -neofetch
                fi
                { printf "${CYAN}└─[${RESETBG}✔${CYAN}]${RESETBG} NeoFetch: "; reset_color; echo ""; }
                neofetch
                echo ""
                read -p "${CYAN}[${RESETBG}ℹ️${CYAN}]${RESETBG} Do you want to exit? [y] " rpy
                if [[ "$rpy" -eq "y" ]]; then
                    clear
                fi
                ;;
            0 | 00)
                sleep .5
                { printf "${RED}└─[${RESETBG}⚠${RED}]${RESETBG} Program full stopped."; reset_color; echo ""; }
                echo ""
                exit 0    
                ;;
            *)
                sleep .5
                { printf "${RED}└─[${RESETBG}⚠${RED}]${RESETBG} Invalid input."; reset_color; echo ""; }
                echo ""
                sleep 2 
                clear
                ;;
        esac
    done    
}

# MAIN
main
