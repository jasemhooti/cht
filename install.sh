#!/bin/bash
clear
echo "----------- NetBox Bot Installer ------------"
echo "1) نصب"
echo "2) بروزرسانی"
echo "3) حذف"
echo "4) خروج"
read -p "انتخاب: " choice
if [ $choice == 1 ]; then
    sudo apt update && sudo apt upgrade -y
    sudo apt install python3 python3-pip nginx certbot python3-certbot-nginx sqlite3 -y
    python3 -m pip install -r requirements.txt
    read -p "توکن ربات: " token
    read -p "آیدی عددی ادمین: " admin_id
    read -p "دامنه: " domain
    sudo certbot --nginx -d $domain --agree-tos -m your-email@example.com --non-interactive
    sqlite3 netbox.db < db.sql
    cp config.json config.json.bak
    sed -i "s/YOUR_TOKEN/$token/g" config.json
    sed -i "s/ADMIN_ID/$admin_id/g" config.json
    sed -i "s/YOUR_DOMAIN/$domain/g" config.json
    echo "نصب انجام شد. برای اجرا: python3 bot.py"
elif [ $choice == 2 ]; then
    git pull
    echo "بروزرسانی شد."
elif [ $choice == 3 ]; then
    sudo systemctl stop netbox
    sudo rm -rf /opt/netbox
    echo "ربات حذف شد."
else
    exit
fi
