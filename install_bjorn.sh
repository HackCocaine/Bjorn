#!/bin/bash

# BJORN Installation Script
# This script handles the complete installation of BJORN
# Author: infinition
# Version: 1.1 - Modified to support "none" as an EPD option

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Variables
BJORN_USER="bjorn"
BJORN_PATH="/home/${BJORN_USER}/Bjorn"
EPD_VERSION=""

# Function to update the configuration with selected EPD version
update_config() {
    if [ -f "config/shared_config.json" ]; then
        sed -i "s/\"epd_type\": \"[^\"]*\"/\"epd_type\": \"$EPD_VERSION\"/" config/shared_config.json
        echo -e "${GREEN}Configuration updated with EPD type: $EPD_VERSION${NC}"
    else
        echo -e "${RED}Error: Configuration file not found${NC}"
        exit 1
    fi
}

# Function to display options and capture user choice
select_epd_version() {
    echo -e "\n${BLUE}Select the E-Paper display version:${NC}"
    echo "1. epd2in13b_V3"
    echo "2. epd2in13_V2"
    echo "3. epd4in2"
    echo "4. epd7in5_V2"
    echo "5. epd7in5b_V2"
    echo "6. none"
    echo -n "Enter your choice (1-6): "
    read -r choice

    case $choice in
        1) EPD_VERSION="epd2in13b_V3" ;;
        2) EPD_VERSION="epd2in13_V2" ;;
        3) EPD_VERSION="epd4in2" ;;
        4) EPD_VERSION="epd7in5_V2" ;;
        5) EPD_VERSION="epd7in5b_V2" ;;
        6) EPD_VERSION="none" ;;
        *) echo -e "${RED}Invalid choice. Please run the script again.${NC}"; exit 1 ;;
    esac

    echo -e "${GREEN}Selected EPD version: $EPD_VERSION${NC}"
}

# Main script execution
main() {
    # Select EPD version
    select_epd_version

    # Navigate to BJORN directory
    cd "$BJORN_PATH" || { echo -e "${RED}Error: BJORN directory not found.${NC}"; exit 1; }

    # Update configuration
    update_config

    echo -e "${GREEN}Installation and configuration completed successfully.${NC}"
}

# Run main function
main
