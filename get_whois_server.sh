for line in $(cat root_zone_list.txt)
do
    WHOIS_SERVER=$(whois -h whois.iana.org ${line}|grep whois:|awk '{print $NF}')
    echo "\"${line}\":\"${WHOIS_SERVER}\","
    echo "\"${line}\":\"${WHOIS_SERVER}\"," >> whois_server_map.txt
    sleep 1
done

