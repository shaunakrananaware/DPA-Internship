cpu_idle=`top -b -n 1|grep Cpu |awk '{print $8}'|cut -f 1 -d "."`
echo "CPU Usage: $((100 - $cpu_idle))%"

mem_free=`free -m | grep "Mem" | awk '{print $4+$6}'`
echo "Memory available: $mem_free MB"
