#!/bin/bash
echo "updating syatem"
sudo apt update && sudo apt upgrade -y
echo "installing python3 and pip3"
sudo apt install python3 python3-pip -y
#apt install python3 python3-pip3 -y

#installing mysql server
# Install MySQL Server
#echo "Installing MySQL Server..."
#sudo apt install -y mysql-server

# Secure MySQL installation
#echo "Securing MySQL installation..."
#sudo mysql_secure_installation

# Install SQLite
echo "Installing SQLite..."
sudo apt install -y sqlite3
#apt install -y sqlite3

# Check the installed versions
#echo "MySQL version:"
#mysql --version

echo "SQLite version:"
sqlite3 --version
#running mysql services
#sudo systemctl status mysql
echo "mysql services has been started"
#open my sql server
#echo "Opening my sql server"
#sudo mysql -u root -p
#main packages
echo "installing pyqt6, mysqlconector,pyside for runing application"
#sudo apt install qt6-qmake qtbase5-dev qtbase6-dev-tools libxcb1 libx11-dev libxkbcommon-x11-0 libx11-xcb-dev libxcb-xinerama0 libxcb-image0 libxcb-randr0 libxcb-shm0 libxcb-icccm4
sudo apt install python3-pyqt6 #python3-mysql-connector-python python3-pyside6
#apt install python3-PyQt6 python3-mysql-connector-python python3-pyside6
 
#placing file 
#sudo mkdir -p ~/myapp/
mkdir -p ~/myapp/
echo "~/myapp dic was created"
sleep 5s
cd ~/myapp/
git clone https://github.com/RAAVANUNKNOWN10/linux-py.git
echo "cloned repo"
##############################################################
mv ./linux-py/myapp.py ~/myapp/linux-py/login.py
mv ./linux-py/login.desktop ~/Desktop
echo "moved file on desktop and rename the .py file"
#sudo mv myapp.py ~/myapp/login.py

echo "giving permission of exicution"
# creating desk top file

sleep 2s
cd ~/Desktop

#can use root also
bash -c 'cat > login.desktop << EOF

[Desktop Entry]
Version=1.0
Name=Raavan
Comment=Runs my Python script
Categories=Utility;Application;
#EOF'
echo "Exec=/bin/bash /home/"$(whoami)"/myapp/linux-py/login_desktop.sh" >> login.desktop
echo "Icon=/home/"$(whoami)"/myapp/linux-py/logo.png" >> login.desktop
echo "Terminal=false" >> login.desktop
echo "Type=Application" >> login.desktop

sudo chmod +x ~/myapp/linux-py/login.py
sudo chmod +x ~/myapp/linux-py/login_desktop.sh
sudo chmod +x ~/Desktop/login.desktop

echo "application stared"
