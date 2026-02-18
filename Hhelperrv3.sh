#!/bin/bash

# Массив с приложениями
apps=(
    "Tasker"
    "Greenify"
    "Solid Explorer"
    "SD Maid"
    "Titanium Backup"
    "MacroDroid"
    "CPU-Z"
    "AIDA64"
    "AccuBattery"
    "Ampere"
    "Root Checker"
    "Lucky Patcher"
    "AdAway"
    "Blokada"
    "NetGuard"
    "Firefox"
    "Brave"
    "Kiwi Browser"
    "Vivaldi"
    "Tor Browser"
    "Telegram"
    "Signal"
    "Element"
    "ProtonMail"
    "FairEmail"
    "Nextcloud"
    "Syncthing"
    "K-9 Mail"
    "Infinity"
    "Slide"
    "VLC"
    "MX Player"
    "NewPipe"
    "SkyTube"
    "Spotify"
    "ViMusic"
    "BlackHole"
    "Poweramp"
    "Musicolet"
    "Oto Music"
    "Pulsar"
    "AIMP"
    "Retro Music"
    "Vinyl"
    "Auro"
    "Librera"
    "KOReader"
    "Moon+ Reader"
    "FBReader"
    "Perfect Viewer"
    "Tachiyomi"
    "Komikku"
    "Kotatsu"
    "ReadEra"
    "eBoox"
    "Open Camera"
    "GCam"
    "Simple Gallery"
    "Aves"
    "Leafpic"
    "Snapseed"
    "Lightroom"
    "Pixlr"
    "Photo Editor"
    "Scrambled Exif"
    "Bitwarden"
    "KeePassDX"
    "Authy"
    "Aegis"
    "AndOTP"
    "OpenVPN"
    "WireGuard"
    "ProtonVPN"
    "Torrex"
    "NetAnalysis"
    "Fing"
    "Termius"
    "JuiceSSH"
    "ConnectBot"
    "Material Files"
    "F-Droid"
    "Aurora Store"
    "APKMirror"
    "APKPure"
    "Aptoide"
    "Uptodown"
    "Yalp Store"
    "Aurora Droid"
    "Droid-ify"
    "Neo Store"
    "Minecraft PE"
    "PPSSPP"
    "ePSXe"
    "DraStic"
    "My Boy!"
    "Citra"
    "AetherSX2"
    "Dolphin"
    "JoiPlay"
    "RetroArch"
)

# Приветственный экран
clear
echo "Hhelperrv3"
echo ""
echo "==============================- V2 ================================="
echo ""
echo "Приветствую! Спасибо что используешь, то что я делаю :3"
echo "by @ne_ghosty"
echo ""
echo "Загрузка..."
sleep 3

while true; do
    clear
    echo "Hhelperrv3"
    echo ""
    echo "==============================- V2 ================================="
    echo ""
    echo "1. Показать все 100 приложений"
    echo "2. Скоро..."
    echo "3. Скоро..."
    echo "4. Скоро..."
    echo "5. Выход (Увидимся..!)"
    echo ""
    echo -n "Выберите пункт [1-5]: "
    read choice

    case $choice in
        1)
            while true; do
                clear
                echo "═══════════════════════════════════════════════════════════════"
                echo "                       Hhelperrv3"
                echo "═══════════════════════════════════════════════════════════════"
                echo ""
                for i in "${!apps[@]}"; do
                    echo "$((i+1)). ${apps[$i]}"
                done
                echo ""
                echo "═══════════════════════════════════════════════════════════════"
                echo "Топ-10 для первой установки:"
                echo "1. F-Droid  2. NewPipe  3. Bitwarden  4. VLC  5. Solid Explorer"
                echo "6. Brave  7. Open Camera  8. Librera  9. Tasker  10. RetroArch"
                echo "═══════════════════════════════════════════════════════════════"
                echo ""
                echo -n "Введите номер приложения для поиска (0 - назад): "
                read app_num
                
                if [[ $app_num -eq 0 ]]; then
                    break
                elif [[ $app_num -ge 1 && $app_num -le 100 ]]; then
                    clear
                    echo "═══════════════════════════════════════════════════════════════"
                    echo "            ПОИСК: ${apps[$((app_num-1))]}"
                    echo "═══════════════════════════════════════════════════════════════"
                    echo ""
                    echo "Открываю поиск в Google..."
                    termux-open "https://www.google.com/search?q=${apps[$((app_num-1))]}+Android+app"
                    sleep 3
                else
                    echo "Неверный номер!"
                    sleep 2
                fi
            done
            ;;
        2|3|4)
            echo "Скоро..."
            sleep 2
            ;;
        5)
            clear
            echo "Выход. Увидимся..!"
            sleep 1
            clear
            cd ~
            break
            ;;
        *)
            echo "Неверный пункт. Попробуй 1-5."
            sleep 2
            ;;
    esac
done
