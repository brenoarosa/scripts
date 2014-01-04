# Check if you're logged as root
if [ "`whoami`" != "root" ] 
then
  echo "You need root privilege."
  echo "Try: sudo $0"
  exit 1
fi

# Execute update, set -x is used to print commands!
set -v
apt-get update;
apt-get upgrade -y;
apt-get dist-upgrade -y;
set +v

echo 
echo "Script by Breno Arosa."
sleep 1
exit 0
