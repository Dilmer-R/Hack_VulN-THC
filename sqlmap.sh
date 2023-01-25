#!/bin/bash
# Colors Bash

reset='\033[0m'
black='\033[30m'
red_color='\033[31m'
green_color='\033[32m'
yellow='\033[33m'
blue='\033[34m'
purple='\033[35m'
cyan='\033[36m'
light_grey='\033[37m'
dark_gray='\033[90m'
light_red='\033[91m'
light_green='\033[92m'
light_yellow='\033[93m'
light_blue='\033[94m'
light_purple='\033[95m'
light_cyan='\033[96m'
white='\033[97m'
# Menu and Banner
banner() {
echo ""
echo -e "${green_color}                    ████"                                   
echo -e "${green_color}                  ░░███"                                   
echo -e "${green_color}   █████   ████████░███ █████████████    ██████  ████████"
echo -e "${green_color}  ███░░   ███░░███ ░███░░███░░███░░███  ░░░░░███░░███░░███"
echo -e "${green_color} ░░█████ ░███ ░███ ░███ ░███ ░███ ░███   ███████ ░███ ░███"
echo -e "${green_color}  ░░░ ███░███ ░███ ░███ ░███ ░███ ░███  ███░░███ ░███ ░███"
echo -e "${green_color}  ██████ ░░███████ ██████████░███ █████░░████████░███████"
echo -e "${green_color} ░░░░░░   ░░░░░███░░░░░░░░░░ ░░░ ░░░░░  ░░░░░░░░ ░███░░░" 
echo -e "${green_color}              ░███                               ░███"
echo -e "${green_color}             █████                              █████"    
echo -e "${green_color}             ░░░░░                              ░░░░░"

}
banner
echo ""
echo ""
read -p "Ingrese la URL a vulnerar: " url
echo -e "${reset}"
echo -e "${red_color}La url a vulnerar es: "${url}
sleep 5
python sqlmap.py -u "${url}" --dbs
echo -e "${reset}"