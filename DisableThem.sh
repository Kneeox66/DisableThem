#!/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
RESET='\033[0m'  


print_skull() {
    echo -e "${RED}"
    echo "     ______"
    echo "  .-'      '-."
    echo " /            \\"
    echo "|,  .-.  .-.  ,|"
    echo "| )(_o/  \o_)( |"
    echo "|/     /\     \\|"
    echo " (_     ^^     _)"
    echo "   \\__|IIIIII|__/"
    echo "    | \\IIIIII/ |"
    echo "    \\          /"
    echo "     '--------'"
    echo -e "${RESET}"
}


disable_camera() {
    echo -e "${YELLOW}Disabling camera...${RESET}"
    sudo modprobe -r uvcvideo && echo -e "${GREEN}Camera has been disabled.${RESET}" || echo -e "${RED}Failed to disable camera.${RESET}"
}


disable_microphone() {
    echo -e "${YELLOW}Disabling microphone...${RESET}"
    sudo modprobe -r snd_hda_intel && echo -e "${GREEN}Microphone has been disabled.${RESET}" || echo -e "${RED}Failed to disable microphone.${RESET}"
}


enable_camera() {
    echo -e "${YELLOW}Enabling camera...${RESET}"
    sudo modprobe uvcvideo && echo -e "${GREEN}Camera has been enabled.${RESET}" || echo -e "${RED}Failed to enable camera.${RESET}"
}


enable_microphone() {
    echo -e "${YELLOW}Enabling microphone...${RESET}"
    sudo modprobe snd_hda_intel && echo -e "${GREEN}Microphone has been enabled.${RESET}" || echo -e "${RED}Failed to enable microphone.${RESET}"
}


main_menu() {
    clear
    print_skull
    echo -e "${CYAN}Camera & Microphone Control Tool${RESET}"
    echo "Choose an option:"
    echo -e "${CYAN}1. Disable Camera${RESET}"
    echo -e "${CYAN}2. Disable Microphone${RESET}"
    echo -e "${CYAN}3. Enable Camera${RESET}"
    echo -e "${CYAN}4. Enable Microphone${RESET}"
    echo -e "${RED}5. Exit${RESET}"

    read -p "Enter the number of your choice: " choice
    case $choice in
        1) disable_camera ;;
        2) disable_microphone ;;
        3) enable_camera ;;
        4) enable_microphone ;;
        5) 
            echo -e "${YELLOW}Exiting...${RESET}"
            exit 0
            ;;
        *) 
            echo -e "${RED}Invalid choice. Please try again.${RESET}"
            ;;
    esac
}


while true; do
    main_menu
    read -p "Press [Enter] to return to the menu..." 
done
