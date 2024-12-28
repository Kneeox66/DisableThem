#!/bin/bash

# Define colors for better aesthetics
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
MAGENTA='\033[1;35m'
WHITE='\033[1;37m'
RESET='\033[0m'  # Reset to default color

# Function to print styled text
print_banner() {
    echo -e "${MAGENTA}"
    echo -e "#############################"
    echo -e "##    Camera/Microphone     ##"
    echo -e "##      Control Tool        ##"
    echo -e "#############################"
    echo -e "${RESET}"
}

# Function to print bold and colored text
echo_bold() {
    echo -e "${YELLOW}$1${RESET}"
}

# Function to print error message in red
echo_error() {
    echo -e "${RED}$1${RESET}"
}

# Function to disable the camera
disable_camera() {
    echo_bold "Disabling camera..."
    sudo modprobe -r uvcvideo
    echo -e "${GREEN}Camera has been disabled.${RESET}"
}

# Function to disable the microphone
disable_microphone() {
    echo_bold "Disabling microphone..."
    sudo modprobe -r snd_hda_intel
    echo -e "${GREEN}Microphone has been disabled.${RESET}"
}

# Function to enable the camera
enable_camera() {
    echo_bold "Enabling camera..."
    sudo modprobe uvcvideo
    echo -e "${GREEN}Camera has been enabled.${RESET}"
}

# Function to enable the microphone
enable_microphone() {
    echo_bold "Enabling microphone..."
    sudo modprobe snd_hda_intel
    echo -e "${GREEN}Microphone has been enabled.${RESET}"
}

# Menu for user to choose
clear
print_banner
echo_bold "Choose an option:"

echo -e "${CYAN}1. Disable Camera${RESET}"
echo -e "${CYAN}2. Disable Microphone${RESET}"
echo -e "${CYAN}3. Enable Camera${RESET}"
echo -e "${CYAN}4. Enable Microphone${RESET}"
echo -e "${RED}5. Exit${RESET}"

read -p "Enter the number of your choice: " choice

case $choice in
    1)
        disable_camera
        ;;
    2)
        disable_microphone
        ;;
    3)
        enable_camera
        ;;
    4)
        enable_microphone
        ;;
    5)
        echo -e "${YELLOW}Exiting...${RESET}"
        exit 0
        ;;
    *)
        echo_error "Invalid choice. Exiting..."
        exit 1
        ;;
esac