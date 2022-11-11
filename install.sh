sudo apt update
sudo apt upgrade
sudo apt install python3-pip -y
sudo apt-get install qemu-utils -y

python3 -m pip install --user --upgrade pip
sudo apt install python3-venv

python3 -m venv venv
source venv/bin/activate
pip3 install diskimage-builder

wget -P /tmp/ https://storage.googleapis.com/akpublic/MLNX_OFED_LINUX-5.8-1.0.1.1-ubuntu22.10-x86_64.iso
