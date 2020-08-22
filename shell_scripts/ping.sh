read -p "Enter hostname to ping: " host
echo "pinging: $host"

ansible $host -m ping --ask-vault-pass 

