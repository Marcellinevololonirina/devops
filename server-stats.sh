echo "========= Server Performance stats =========="
echo


#CPU
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print 100 -$8 "%"}'
echo


#Mémoire
echo "Memory usage:"
free -h
echo

#Disque
echo "Disk usage:"
df -h
echo

#Uptime
echo "System Uptime:"
uptime -p
echo

#processus CPU
echo "Top 5 CPU consumming processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6
echo

#processus mémoire
echo "Top memory consuming processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -6
echo
