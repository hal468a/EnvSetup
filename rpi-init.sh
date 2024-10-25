# -------- installing Docker -------
sudo apt update -y
sudo apt upgrade -y
sudo apt install curl

curl -sSL https://get.docker.com | sh
sudo curl -L "https://github.com/docker/compose/releases/download/v2.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo gpasswd -a ${USER} docker
# ----------------------------------

# -------- install rustdesk --------
wget -P /hmoe/${USER}/Download https://github.com/rustdesk/rustdesk/releases/download/1.3.1/rustdesk-1.3.1-aarch64.deb
cd /hmoe/${USER}/Download
sudo chmod +x rustdesk-1.3.1-aarch64.deb
sudo dpkg -i rustdesk-1.3.1-aarch64.deb
sudo apt --fix-broken install -y
sudo dpkg -i rustdesk-1.3.1-aarch64.deb
# ----------------------------------
sudo reboot