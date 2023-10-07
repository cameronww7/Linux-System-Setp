# Note
# ---------------------------------------
# Make sure file has needed perms
# chmod +x Linux_Setup.sh

echo "\n\n\n Update + Install Basics"

# Update the System
# ---------------------------------------
sudo apt-get clean -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y


# Install VB Guest additions
# ---------------------------------------
sudo apt-get install -y --reinstall virtualbox-guest-x11


# Install Dev Tools
# ---------------------------------------
# Install Git
echo "\n\n\n Installing - Git \n"
sudo apt-get install -y git 

# Install Perl
echo "\n\n\n Installing - perl \n"
sudo apt-get install -y perl  

# Install Python
echo "\n\n\n Installing - python3 & python \n"
sudo apt-get install -y python3 
sudo apt-get install -y python

# Install Pip
echo "\n\n\n Installing - python3-pip \n"
sudo apt-get -y --purge autoremove python3-pip
sudo apt-get install -y python3-pip 

# Install Basic Tools
echo "\n\n\n Installing - build-essential \n"
sudo apt-get install -y build-essential 

echo "\n\n\n Installing - manpages-dev \n"
sudo apt-get install -y manpages-dev

echo "\n\n\n Installing - libpcap-dev \n"
sudo apt-get install -y libpcap-dev

# Install Go - https://golang.org/doc/install
echo "\n\n\n Installing - Go \n"
sudo wget -P /opt/ https://golang.org/dl/go1.16.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf /opt/go1.16.linux-amd64.tar.gz
sudo export GOPATH=$HOME/go
sudo export PATH=$PATH:/usr/local/go/bin

# Install Atom
echo "\n\n\n Installing - Atom \n"
sudo apt-get install -y  software-properties-common apt-transport-https wget
sudo apt-get install wget gpg
sudo wget -P /opt/ https://atom.io/download/deb
sudo apt-get install -y /opt/atom-amd64.deb

# Install VSCode
echo "\n\n\n Installing - VSCode \n"
sudo apt-get install -y software-properties-common apt-transport-https wget
sudo wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get update
sudo apt-get install -y code 

# Install Libre Office
echo "\n\n\n Installing - Libre Office \n"
sudo apt-get -y install libreoffice

# System Tool Install
# ---------------------------------------
echo "\n\n\n Installing - System Tools \n"
sudo apt-get install -y gedit
sudo apt-get install -y tree
sudo apt-get install -y htop
sudo apt-get install -y gedit
sudo apt-get install -y glances
sudo apt-get install -y most


# Install Internet Browsers
# ~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~--~-~-~-~-~--~-~-~-~-~--~-~-~-~-~-
# Install Brave
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
# ~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~--~-~-~-~-~--~-~-~-~-~--~-~-~-~-~-


# Install Terminal Tools + Customization
# ---------------------------------------
echo "\n\n\n Installing - Terminal Tools + Customization \n"
sudo git clone https://github.com/cameronww7/Terminal-Customization /opt/Terminal-Customization/

# Setup my File Strucutres 
sudo chmod -R 755 /opt 

# Adding password feedback
# ---------------------------------------
echo "\n\n\n Installing - password feedback \n"
echo "" | sudo EDITOR='tee -a' visudo # Adds a Newline to the File
echo "Defaults	pwfeedback" | sudo EDITOR='tee -a' visudo
echo "" | sudo EDITOR='tee -a' visudo # Adds a Newline to the File

# Add Sudo Lecture Message
# ---------------------------------------
# https://www.cyberciti.biz/open-source/command-line-hacks/adding-spice-to-your-sudo-session-with-a-lecture-file-on-linux-or-unix/
# https://stackoverflow.com/questions/323957/how-do-i-edit-etc-sudoers-from-a-script
echo "\n\n\n Installing - Sudo Lecture Message \n"

sudo cp /opt/Linux-System-Setup/Linux-Setup/sudo_lecture.txt /etc/sudo_lecture.txt

echo "\n\n\n Adding Sudo Lecture Message \n"
echo "" | sudo EDITOR='tee -a' visudo
echo "# Adding Lecture Message" | sudo EDITOR='tee -a' visudo
echo "#---------------------------------------" | sudo EDITOR='tee -a' visudo
echo "Defaults	lecture=always" | sudo EDITOR='tee -a' visudo
echo "Defaults	lecture_file=/etc/sudo_lecture.txt" | sudo EDITOR='tee -a' visudo
echo "" | sudo EDITOR='tee -a' visudo


echo "\n\n\n Updating - RUnning FInal UPDATE CHECK! \n"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y


# Reboot Prompt
# ---------------------------------------
echo "\n\n\n Finished - REBOOT Time !\n"
echo "\n\n\n Finished - REBOOT Time !\n"
echo "\n\n\n Finished - REBOOT Time !\n"
