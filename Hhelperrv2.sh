#!/bin/bash

# Цвета
RED='\e[31m'; GREEN='\e[32m'; YELLOW='\e[33m'; BLUE='\e[34m'; CYAN='\e[36m'; NC='\e[0m'

# Проверка termux-api
clear
echo -e "${YELLOW}[•] Проверка Termux-API...${NC}"
if ! command -v termux-open &> /dev/null; then
    echo -e "${RED}[!] Termux-API не найден. Устанавливаю...${NC}"
    pkg update -y && pkg install termux-api -y
    echo -e "${GREEN}[✓] Готово!${NC}"
else
    echo -e "${GREEN}[✓] Termux-API уже установлен${NC}"
fi
sleep 2

# Меню
while true; do
    clear
    echo -e "${CYAN}██╗  ██╗██╗  ██╗███████╗██╗     ██████╗ ███████╗██████╗ ██╗   ██╗██████╗${NC}"
    echo -e "${CYAN}██║  ██║██║  ██║██╔════╝██║     ██╔══██╗██╔════╝██╔══██╗██║   ██║╚════██╗${NC}"
    echo -e "${CYAN}███████║███████║█████╗  ██║     ██████╔╝█████╗  ██████╔╝██║   ██║ █████╔╝${NC}"
    echo -e "${CYAN}██╔══██║██╔══██║██╔══╝  ██║     ██╔═══╝ ██╔══╝  ██╔══██╗╚██╗ ██╔╝██╔═══╝${NC}"
    echo -e "${CYAN}██║  ██║██║  ██║███████╗███████╗██║     ███████╗██║  ██║ ╚████╔╝ ███████╗${NC}"
    echo -e "${CYAN}╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝     ╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝${NC}"
    echo -e "${YELLOW}=============================== v2 =================================${NC}"
    echo ""
    echo -e "${GREEN}1.${NC} Создатель"
    echo -e "${GREEN}2.${NC} Прокси для тг НАВСЕГДА!"
    echo -e "${GREEN}3.${NC} Для тернукс S@ft [INSTALLER]"
    echo -e "${GREEN}4.${NC} soon"
    echo -e "${GREEN}5.${NC} Выход (Увидимся..!)"
    echo ""
    echo -e -n "${BLUE}Выберите пункт [1-5]: ${NC}"
    read choice

    case $choice in
        1) 
            echo -e "${YELLOW}Открываю Создателя...${NC}"
            termux-open https://t.me/rne_ghosty
            sleep 2
            ;;
        2) 
            echo -e "${YELLOW}Активирую Прокси для Telegram...${NC}"
            termux-open "https://t.me/proxy?server=213.165.58.172&port=443&secret=ea2b5e9e884893637299f4053fc9aa30"
            sleep 2
            ;;
        3) 
            echo -e "${YELLOW}Перехожу в S@ft INSTALLER...${NC}"
            termux-open https://t.me/SYPEXHACK
            sleep 2
            ;;
        4) 
            echo -e "${MAGENTA}Скоро здесь что-то будет...${NC}"
            sleep 2
            ;;
        5) 
            echo -e "${RED}Выход. Увидимся..!${NC}"
            cd ~
            echo -e "${GREEN}Ты в домашней папке.${NC}"
            sleep 1
            break
            ;;
        *) 
            echo -e "${RED}Неверный пункт. Попробуй 1-5.${NC}"
            sleep 2
            ;;
    esac
done
