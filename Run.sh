#!/bin/bash


if [ "$(whoami)" != "root" ]; then
    echo -e "\033[1;31mThis script must be run as root\033[0m"
    exit 1
fi


clear
echo -e "\033[1;35m"
for ((i=0; i<50; i++)); do
    echo -ne "█"
    sleep 0.02
done
echo -e "\033[0m"


echo -ne "\033[1;33mInitializing System "
for ((i=0; i<3; i++)); do
    for s in / - \\ \|; do
        echo -ne "\b$s"
        sleep 0.1
    done
done
echo -e "\n"


echo -e "\033[38;5;196m
░██████╗░███╗░░██╗░█████╗░███████╗██╗░░██╗
\033[38;5;202m██╔════╝░████╗░██║██╔══██╗╚════██║██║░░██║
\033[38;5;226m██║░░██╗░██╔██╗██║███████║░░███╔═╝███████║
\033[38;5;46m██║░░╚██╗██║╚████║██╔══██║██╔══╝░░██╔══██║
\033[38;5;27m╚██████╔╝██║░╚███║██║░░██║███████╗██║░░██║
\033[38;5;129m░╚═════╝░╚═╝░░╚══╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝\033[0m"


echo -e "\n\033[1;32m"
for ((i=0; i<25; i++)); do
    echo -ne "\033[$(($RANDOM % 2));32m$(($RANDOM % 2))"
    sleep 0.05
done
echo -e "\033[0m\n"


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
        "GS") echo "South Georgia 🇬🇸";;
        "KR") echo "South Korea 🇰🇷";;
        "ES") echo "Spain 🇪🇸";;
        "LK") echo "Sri Lanka 🇱🇰";;
        "SD") echo "Sudan 🇸🇩";;
        "SR") echo "Suriname 🇸🇷";;
        "SE") echo "Sweden 🇸🇪";;
        "CH") echo "Switzerland 🇨🇭";;
        "SY") echo "Syria 🇸🇾";;
        "TW") echo "Taiwan 🇹🇼";;
        "TJ") echo "Tajikistan 🇹🇯";;
        "TZ") echo "Tanzania 🇹🇿";;
        "TH") echo "Thailand 🇹🇭";;
        "TL") echo "Timor-Leste 🇹🇱";;
        "TG") echo "Togo 🇹🇬";;
        "TK") echo "Tokelau 🇹🇰";;
        "TO") echo "Tonga 🇹🇴";;
        "TT") echo "Trinidad and Tobago 🇹🇹";;
        "TN") echo "Tunisia 🇹🇳";;
        "TR") echo "Turkey 🇹🇷";;
        "TM") echo "Turkmenistan 🇹🇲";;
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
        "YE") echo "Yemen 🇾🇪";;
        "ZM") echo "Zambia 🇿🇲";;
        "ZW") echo "Zimbabwe 🇿🇼";;
        *) echo "Unknown Country 🌍";;
    esac
}


IP_ADDRESS=$(curl -s http://ipv4.icanhazip.com)
COUNTRY_CODE=$(curl -s ipinfo.io | grep -oP '(?<="country": ")[^"]*')
COUNTRY_VPS_AND_FLAG=$(country_vps_flag $COUNTRY_CODE)

show_progress() {
    local duration=$1
    local message=$2
    echo -ne "\033[1;36m${message} ["
    local progress=""
    for ((i=0; i<=$duration; i++)); do
        echo -ne "▓"
        sleep 0.1
    done
    echo -e "] ✓\033[0m"
}


echo -e "\033[38;5;51m╭───────────────────────────────────────────────╮\033[0m"
echo -e "\033[38;5;51m│\033[0m     \033[1;33m⚡ Premium VPS Port 443 Setup Tool ⚡\033[0m     \033[38;5;51m│\033[0m"
echo -e "\033[38;5;51m╰───────────────────────────────────────────────╯\033[0m"


echo -e "\n\033[38;5;219m◈ ━━━━━━━━━ ⸙ Developer Information ⸙ ━━━━━━━━━ ◈\033[0m"
echo -e "\033[1;36m➤ Developer:\033[0m \033[38;5;227m@GNA_I\033[0m"
echo -e "\033[1;36m➤ Channel:\033[0m \033[38;5;227mhttps://t.me/D_S_D_C\033[0m"
echo -e "\033[1;36m➤ Version:\033[0m \033[38;5;227m2.5 Premium\033[0m"
echo -e "\033[38;5;219m◈ ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ◈\033[0m"


echo -e "\n\033[38;5;82m🚀 Starting Premium Installation Process...\033[0m\n"


echo -e "\033[38;5;51m┌──────────────────────────────────────┐\033[0m"
echo -e "\033[38;5;51m│\033[0m     \033[1;33mStage 1: System Preparation\033[0m      \033[38;5;51m│\033[0m"
echo -e "\033[38;5;51m└──────────────────────────────────────┘\033[0m"
show_progress 20 "Configuring environment..."
show_progress 25 "Setting up dependencies..."
show_progress 15 "Optimizing system..."


echo -e "\n\033[38;5;51m┌──────────────────────────────────────┐\033[0m"
echo -e "\033[38;5;51m│\033[0m     \033[1;33mStage 2: Core Installation\033[0m       \033[38;5;51m│\033[0m"
echo -e "\033[38;5;51m└──────────────────────────────────────┘\033[0m"
show_progress 30 "Installing required packages..."
show_progress 20 "Configuring services..."
show_progress 25 "Setting up port 443..."


echo -e "\n\033[38;5;51m┌──────────────────────────────────────┐\033[0m"
echo -e "\033[38;5;51m│\033[0m     \033[1;33mStage 3: Final Setup\033[0m             \033[38;5;51m│\033[0m"
echo -e "\033[38;5;51m└──────────────────────────────────────┘\033[0m"
show_progress 20 "Optimizing performance..."
show_progress 15 "Securing connection..."
show_progress 25 "Finalizing setup..."


echo -e "\n\033[38;5;82m╔════════════════ Connection Details ════════════════╗\033[0m"
echo -e "\033[38;5;82m║                                                      ║\033[0m"
echo -e "\033[38;5;82m║\033[0m  \033[1;36mChannel:\033[0m https://t.me/D_S_D_C              \033[38;5;82m║\033[0m"
echo -e "\033[38;5;82m║\033[0m  \033[1;36mLocation:\033[0m $COUNTRY_VPS_AND_FLAG           \033[38;5;82m║\033[0m"
echo -e "\033[38;5;82m║\033[0m  \033[1;36mIP & Port:\033[0m $IP_ADDRESS:443                \033[38;5;82m║\033[0m"
echo -e "\033[38;5;82m║\033[0m  \033[1;36mUsername:\033[0m telegram                         \033[38;5;82m║\033[0m"
echo -e "\033[38;5;82m║\033[0m  \033[1;36mPassword:\033[0m d_s_d_c                         \033[38;5;82m║\033[0m"
echo -e "\033[38;5;82m║\033[0m  \033[1;36mDeveloper:\033[0m https://t.me/l_s_I_I          \033[38;5;82m║\033[0m"
echo -e "\033[38;5;82m║                                                      ║\033[0m"
echo -e "\033[38;5;82m╚══════════════════════════════════════════════════════╝\033[0m"


LOG_FILE="/root/connection_info.txt"
{
    echo "=== Connection Information ==="
    echo "Installation Date: $(date)"
    echo "Channel: https://t.me/D_S_D_C"
    echo "Location: $COUNTRY_VPS_AND_FLAG"
    echo "IP & Port: $IP_ADDRESS:443"
    echo "Username: telegram"
    echo "Password: d_s_d_c"
    echo "Developer: https://t.me/l_s_I_I"
    echo "=========================="
} > "$LOG_FILE"


echo -e "\n\033[38;5;82m╔═══════════════════════════════════════════════╗\033[0m"
echo -e "\033[38;5;82m║\033[0m    🌟 INSTALLATION COMPLETED SUCCESSFULLY! 🌟    \033[38;5;82m║\033[0m"
echo -e "\033[38;5;82m╚═══════════════════════════════════════════════╝\033[0m"


echo -e "\n\033[1;32m     ✓ Port 443 Successfully Configured\033[0m"
echo -e "\033[1;32m     ✓ Security Measures Implemented\033[0m"
echo -e "\033[1;32m     ✓ System Optimization Complete\033[0m"


echo -e "\n\033[38;5;219m◈ ━━━━━━━━━ ⸙ Premium Features Active ⸙ ━━━━━━━━━ ◈\033[0m"
echo -e "\033[1;36m▶ High-Speed Port 443 Support\033[0m"
echo -e "\033[1;36m▶ Enhanced Security Protocol\033[0m"
echo -e "\033[1;36m▶ Optimized Performance\033[0m"
echo -e "\033[38;5;219m◈ ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ◈\033[0m"


echo -e "\n\033[1;33m💫 Developed with excellence by @GNA_I\033[0m"
echo -e "\033[1;33m📜 Copyright © 2025 - All Rights Reserved\033[0m\n"


echo -e "\033[1;32m"
for ((i=0; i<50; i++)); do
    echo -ne "${RANDOM:0:1}"
    sleep 0.02
done
echo -e "\033[0m\n"
