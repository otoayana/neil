BLUE='\033[0;34m'
NC='\033[0m'
GREEN='\033[0;32m'
clear
echo "Welcome to the ${BLUE}Neil${NC} Bundle for Debian."
echo "Remember to enter your admin password when is required."
echo "The installation will start in 5 seconds."
sleep 5
clear
echo "${BLUE}----${GREEN}Installing LMMS${BLUE}----${NC}"
sudo apt-get install -y lmms
echo "${BLUE}----${GREEN}Installing Blender${BLUE}----${NC}"
sudo apt-get install -y blender
echo "${BLUE}----${GREEN}Downloading Lightworks${BLUE}----${NC}"
mkdir Lightworks
cd Lightworks
wget "http://downloads.lwks.com/v14/lwks-14.0.0-amd64.deb"
echo "${BLUE}----${GREEN}Unpacking Lightworks .DEB file${BLUE}----${NC}"
dpkg -i lwks-14.0.0-amd64.deb
echo "${BLUE}----${GREEN}Installing Lightworks${BLUE}----${NC}"
aptitude install -y lightworks
echo "${BLUE}----${GREEN}Installing Audacity${BLUE}----${NC}"
sudo apt-get install -y audacity
echo "${BLUE}----${GREEN}Installing GIMP${BLUE}----${NC}"
sudo apt-get install -y gimp
echo "${BLUE}----${GREEN}Deleting extra files${BLUE}----${NC}"
cd ../
sudo rm -r Lightworks
clear
echo "${NC}Thanks for installing ${BLUE}Neil ${NC}Bundle for Debian. Enjoy creating."
sleep 5
clear
