#!/bin/bash
#Created By WILDYVPN
clear
neofetch
echo "================================"
echo "* USERNAME          EXP DATE   *"
echo "================================"
while read expired
do
        AKUN="$(echo $expired | cut -d: -f1)"
        ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
        exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
        if [[ $ID -ge 1000 ]]; then
        printf "%-17s %2s\n" "$AKUN" "$exp"
        fi
done < /etc/passwd
JUMLAH="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo -e "===================== Total =========================="
echo "         Total Semua Anggota Di Server : $JUMLAH "
echo -e "===================== Total =========================="
echo -e ""
echo -e "=================== Informasi ========================"
echo -e "*                                                    *"
echo -e "*           Script Created By WILDYVPN               *"
echo -e "*               WA = 0896-3528-4000                  *"
echo -e "*                                                    *"
echo -e "=================== Informasi ========================"
