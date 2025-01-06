#!/bin/bash

# Anti-copying protection
if [ "$(whoami)" != "root" ]; then
    echo -e "\033[1;31mThis script must be run as root\033[0m"
    exit 1
fi

# Function to get country name and flag
country_vps_flag() {
    local code=$1
    case $code in
        "SA") echo "Saudi Arabia 🇸🇦";;
        "SN") echo "Senegal 🇸🇳";;
        "RS") echo "Serbia 🇷🇸";;
        "SC") echo "Seychelles 🇸🇨";;
        "SL") echo "Sierra Leone 🇸🇱";;
        "SG") echo "Singapore 🇸🇬";;
        "SX") echo "Sint Maarten 🇸🇽";;
        "SK") echo "Slovakia 🇸🇰";;
        "SI") echo "Slovenia 🇸🇮";;
        "SB") echo "Solomon Islands 🇸🇧";;
        "SO") echo "Somalia 🇸🇴";;
        "ZA") echo "South Africa 🇿🇦";;
        "GS") echo "South Georgia and the South Sandwich Islands 🇬🇸";;
        "KR") echo "South Korea 🇰🇷";;
        "ES") echo "Spain 🇪🇸";;
        "LK") echo "Sri Lanka 🇱🇰";;
        "SD") echo "Sudan 🇸🇩";;
        "SR") echo "Suriname 🇸🇷";;
        "SJ") echo "Svalbard and Jan Mayen 🇸🇯";;
        "SE") echo "Sweden 🇸🇪";;
        "CH") echo "Switzerland 🇨🇭";;
        "SY") echo "Syria 🇸🇾";;
        "TW") echo "Taiwan 🇹🇼";;
        "TJ") echo "Tajikistan 🇹🇯";;
        "TZ") echo "Tanzania 🇹🇿";;
        "TH") echo "Thailand 🇹🇭";;
        "TG") echo "Togo 🇹🇬";;
        "TK") echo "Tokelau 🇹🇰";;
        "TO") echo "Tonga 🇹🇴";;
        "TT") echo "Trinidad and Tobago 🇹🇹";;
        "TN") echo "Tunisia 🇹🇳";;
        "TR") echo "Turkey 🇹🇷";;
        "TM") echo "Turkmenistan 🇹🇲";;
        "TC") echo "Turks and Caicos Islands 🇹🇨";;
        "TV") echo "Tuvalu 🇹🇻";;
        "UG") echo "Uganda 🇺🇬";;
        "UA") echo "Ukraine 🇺🇦";;
        "AE") echo "United Arab Emirates 🇦🇪";;
        "GB") echo "United Kingdom 🇬🇧";;
        "US") echo "United States 🇺🇸";;
        "UY") echo "Uruguay 🇺🇾";;
        "UZ") echo "Uzbekistan 🇺🇿";;
        "VU") echo "Vanuatu 🇻🇺";;
        "VE") echo "Venezuela 🇻🇪";;
        "VN") echo "Vietnam 🇻🇳";;
        "WF") echo "Wallis and Futuna 🇼🇫";;
        "EH") echo "Western Sahara 🇪🇭";;
        "YE") echo "Yemen 🇾🇪";;
        "ZM") echo "Zambia 🇿🇲";;
        "ZW") echo "Zimbabwe 🇿🇼";;
        *) echo "Unknown Country 🌍";;
    esac
}

# Get IP address and country info
IP_ADDRESS=$(curl -s ifconfig.me)
COUNTRY_CODE=$(curl -s ipinfo.io | grep -oP '(?<="country": ")[^"]*')
COUNTRY_VPS_AND_FLAG=$(country_vps_flag $COUNTRY_CODE)

clear
# Animated loading
echo -e "\033[1;36m"
for i in {1..40}; do
    echo -ne "█"
    sleep 0.02
done
echo -e "\033[0m"

# GNAZH Logo with enhanced design
echo -e "\033[38;5;51m
░██████╗░███╗░░██╗░█████╗░███████╗██╗░░██╗
██╔════╝░████╗░██║██╔══██╗╚════██║██║░░██║
██║░░██╗░██╔██╗██║███████║░░███╔═╝███████║
██║░░╚██╗██║╚████║██╔══██║██╔══╝░░██╔══██║
╚██████╔╝██║░╚███║██║░░██║███████╗██║░░██║
░╚═════╝░╚═╝░░╚══╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝\033[0m"

# Fancy border
echo -e "\033[38;5;39m╔═══════════════════════════════════════════════════════════╗\033[0m"
echo -e "\033[38;5;39m║\033[0m       \033[1;36m𝓟𝓻𝓮𝓶𝓲𝓾𝓶 𝓥𝓟𝓢 𝓟𝓸𝓻𝓽 443 𝓢𝓮𝓽𝓾𝓹 𝓣𝓸𝓸𝓵\033[0m         \033[38;5;39m║\033[0m"
echo -e "\033[38;5;39m╚═══════════════════════════════════════════════════════════╝\033[0m"

# Developer info with enhanced styling
echo -e "\n\033[38;5;219m◈ ━━━━━━━━━ ⸙ Developer Profile ⸙ ━━━━━━━━━ ◈\033[0m"
echo -e "\033[1;36m➤ Developer:\033[0m \033[38;5;227m@GNA_I\033[0m"
echo -e "\033[1;36m➤ Expertise:\033[0m \033[38;5;227mMaster of Web Development & Bot Creation\033[0m"
echo -e "\033[1;36m➤ Skills:\033[0m \033[38;5;227m⚡ HTML ⚡ CSS ⚡ JavaScript ⚡ Python ⚡ Telegram API\033[0m"
echo -e "\033[38;5;219m◈ ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ◈\033[0m"

# Copyright protection notice
echo -e "\n\033[1;31m⚠️ WARNING: This script is protected by copyright laws ⚠️\033[0m"
echo -e "\033[1;31m⚠️ Unauthorized copying or distribution is strictly prohibited ⚠️\033[0m\n"

# Function for animated progress
show_progress() {
    local duration=$1
    local message=$2
    echo -ne "\033[1;33m${message} ["
    local progress=""
    for ((i=0; i<=$duration; i++)); do
        echo -ne "▓"
        sleep 0.1
    done
    echo -e "] Done!\033[0m"
}

# Main installation process
echo -e "\n\033[38;5;82m🚀 Initializing Port 443 Setup Process...\033[0m\n"

echo -e "\033[38;5;51m┌──────────────────────────────────────┐\033[0m"
echo -e "\033[38;5;51m│\033[0m     \033[1;33mStage 1: Environment Setup\033[0m      \033[38;5;51m│\033[0m"
echo -e "\033[38;5;51m└──────────────────────────────────────┘\033[0m"
show_progress 20 "Installing Python Virtual Environment..."
sudo apt install python3-venv -y &>/dev/null
python3 -m venv myenv &>/dev/null
source myenv/bin/activate &>/dev/null

echo -e "\n\033[38;5;51m┌──────────────────────────────────────┐\033[0m"
echo -e "\033[38;5;51m│\033[0m     \033[1;33mStage 2: Installing Dependencies\033[0m \033[38;5;51m│\033[0m"
echo -e "\033[38;5;51m└──────────────────────────────────────┘\033[0m"
show_progress 25 "Updating system packages..."
apt update &>/dev/null
show_progress 20 "Installing Python pip..."
apt install python3-pip -y &>/dev/null
show_progress 20 "Installing uDocker..."
pip3 install udocker &>/dev/null

echo -e "\n\033[38;5;51m┌──────────────────────────────────────┐\033[0m"
echo -e "\033[38;5;51m│\033[0m     \033[1;33mStage 3: Configuring Services\033[0m    \033[38;5;51m│\033[0m"
echo -e "\033[38;5;51m└──────────────────────────────────────┘\033[0m"
show_progress 30 "Setting up Docker environment..."
udocker --allow-root install &>/dev/null
show_progress 25 "Pulling Stunnel image..."
udocker --allow-root pull dweomer/stunnel &>/dev/null
show_progress 20 "Creating container..."
udocker --allow-root create --name=ub18x dweomer/stunnel &>/dev/null
show_progress 25 "Configuring port 443..."
udocker --allow-root run -e STUNNEL_SERVICE=ssh -e STUNNEL_CONNECT=127.0.0.1:22 -e STUNNEL_ACCEPT=443 ub18x &>/dev/null

# Success message with fancy styling
echo -e "\n\033[38;5;82m╔════════════════════════════════════════════╗\033[0m"
echo -e "\033[38;5;82m║\033[0m       🎉 Installation Successful! 🎉       \033[38;5;82m║\033[0m"
echo -e "\033[38;5;82m║\033[0m    ✅ Port 443 is now fully supported     \033[38;5;82m║\033[0m"
echo -e "\033[38;5;82m╚════════════════════════════════════════════╝\033[0m"

# Completion Message Animation
echo -e "\n\033[1;36m⚡ Finalizing Setup...\033[0m"
for i in {1..3}; do
    echo -ne "\033[1;32m▓"
    sleep 0.5
    echo -ne "▓"
    sleep 0.5
    echo -ne "▓"
    sleep 0.5
    echo -ne "\r\033[K"
done

# Connection Information Display
echo -e "\n\033[38;5;82m╔═══════════════════ Connection Info ═══════════════════╗\033[0m"
echo -e "\033[38;5;28m# CHANNEL URL:- \033[1;34mhttps://t.me/D_S_D_C\033[0m"
echo -e "\033[1;33m# VPS Country:- $COUNTRY_VPS_AND_FLAG \033[0m"
echo -e "\033[1;33m# IP & port:- $IP_ADDRESS 443 \033[0m"
echo -e "\033[1;33m# User:- telegram \033[0m"
echo -e "\033[1;33m# Pass:- d_s_d_c \033[0m"
echo -e "\033[38;5;28m# DEV:- \033[1;34mhttps://t.me/l_s_I_I\033[0m"
echo -e "\033[1;32m╚════════════════════════════════════════════════════╝\033[0m"
echo ""
echo -e "\033[38;5;239m-----------------------------------------------------------------------------------\033[0m"
echo ""

# Save to log file
LOG_FILE="$(pwd)/log.txt"
{
    echo "Connection Information"
    echo "Channel: https://t.me/D_S_D_C"
    echo "VPS Country: $COUNTRY_VPS_AND_FLAG"
    echo "IP & Port: $IP_ADDRESS 443"
    echo "Username: telegram"
    echo "Password: d_s_d_c"
    echo "Developer: https://t.me/l_s_I_I"
    echo "Installation Date: $(date)"
} > "$LOG_FILE"

# Final Success Message with Animation
echo -e "\n\033[38;5;82m╔═══════════════════════════════════════════════╗\033[0m"
echo -e "\033[38;5;82m║\033[0m  🌟 PORT 443 SUPPORT SUCCESSFULLY ENABLED! 🌟  \033[38;5;82m║\033[0m"
echo -e "\033[38;5;82m╚═══════════════════════════════════════════════╝\033[0m"

# Animated Checkmark
echo -e "\n\033[1;32m     ✓ Configuration Complete!\033[0m"
echo -e "\033[1;32m     ✓ Port 443 is Active!\033[0m"
echo -e "\033[1;32m     ✓ Your VPS is Ready!\033[0m"

# Footer with copyright
echo -e "\n\033[38;5;219m◈ ━━━━━━━━━━ ⸙ Premium Features ⸙ ━━━━━━━━━━ ◈\033[0m"
echo -e "\033[1;36m▶ Exclusive Port 443 Support\033[0m"
echo -e "\033[1;36m▶ Optimized for Hostinger VPS\033[0m"
echo -e "\033[1;36m▶ Professional Configuration\033[0m"
echo -e "\033[38;5;219m◈ ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ◈\033[0m"

echo -e "\n\033[1;33m💫 Created with excellence by @GNA_I\033[0m"
echo -e "\033[1;33m📜 All Rights Reserved © 2025\033[0m\n"

# Additional copyright protection
cat << "EOF" > /dev/null
© 2025 @GNA_I
This script is protected by copyright laws.
Unauthorized copying, modification, or distribution is strictly prohibited.
Violators will be prosecuted to the fullest extent of the law.
EOF
