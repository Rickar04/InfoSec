sudo apt dist-upgrade -y
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

####Install applications
##Git
##sudo install git

##Python and go
sudo apt install golang-go python3 python3-pip -y
cd /usr/bin
sudo cp python3 python

##NMAP
sudo apt install nmap -y

##DNSRecon
sudo apt install dnsrecon -y

##GoBuster
sudo apt install gobuster -y

##Sublist3r
cd ~
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
sudo pip3 install -r requirements.txt
sudo ln -s ~/Sublist3r/sublist3r.py /usr/sbin/sublist3r

##FFUF
cd ~
go get -u github.com/ffuf/ffuf 
sudo cp ~/go/bin/ffuf /usr/local/bin/

##Hydra
sudo apt install hydra -y

##Wordlists
cd ~
mkdir wordlists

cd wordlists
mkdir domain user password path

cd ~/wordlists/domain
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/DNS/namelist.txt -O domain.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/DNS/subdomains-top1million-5000.txt -O domain_5000.txt

cd ~/wordlists/path
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/common.txt -O path.txt
wget https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-2.3-small.txt -O path_small.txt
wget https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-2.3-medium.txt -O path_medium.txt
wget https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-2.3-big.txt  -O path_large.txt

cd ~/wordlists/user
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Usernames/top-usernames-shortlist.txt -O user.txt

cd ~/wordlists/password
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-100.txt -O password_100.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-10000.txt -O password_10000.txt

##Enum4Linux
cd ~
git clone https://github.com/CiscoCXSecurity/enum4linux
sudo cp ~/enum4linux/enum4linux.pl /usr/sbin/enum4linux
sudo apt install samba -y

#SearchSploit
cd /tmp
sudo git clone https://github.com/offensive-security/exploitdb.git /opt/exploit-database
sudo ln -sf /opt/exploit-database/searchsploit /usr/local/bin/searchsploit
sudo cp -n /opt/exploit-database/.searchsploit_rc ~/
