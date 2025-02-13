# !/bin/bash 

sudo apt-get install -y git 
sudo apt install python3 python3-venv python3-pip -y

git clone https://github.com/Sarathrsk03/testHoneyPot

cd testHoneyPot 

python3 -m venv venv 

source venv/bin/activate

pip install -r requirements.txt


read -p "Enter the company name: " companyNameInp 
read -p "Enter the industry: " industryInp
read -p "Enter the role: " roleInp
export companyName=$companyNameInp
export industry=$industryInp
export role=$roleInp

export geminiAPI=

python3 generatePrompts.py

