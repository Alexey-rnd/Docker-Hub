# Добавить выполнение еженедельно в Cron
# 1  02  *  *  sun root /root/zabbix_vacuum.sh

systemctl stop zabbix-server httpd
vacuumdb -U postgres -d zabbix -f -v
systemctl start zabbix-server httpd