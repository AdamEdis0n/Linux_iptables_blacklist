### 12: Blacklist ###
ip_list="/root/Blacklist"
if [ -f $ip_list ]; then
       while read blocked; do
               $IPT -A INPUT -s $blocked -j DROP
               $IPT -A OUTPUT -d $blocked -j DROP
       done < $ip_list
fi

#Example entries in /root/Blacklist:
#95.215.206.146
#95.237.12.253
#95.27.154.34
#95.31.30.215
#95.40.150.70
