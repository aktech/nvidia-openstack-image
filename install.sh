sudo apt update
sudo apt upgrade
sudo apt install python3-pip -y
sudo apt-get install qemu-utils -y

python3 -m pip install --user --upgrade pip
sudo apt install python3-venv -y

python3 -m venv venv
source venv/bin/activate
pip3 install diskimage-builder
