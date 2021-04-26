echo "Installing SembleLang..."
echo "[ 1 ] Installing git..."
echo "[ 2 ] The following command will require your passcode... "
sudo apt install git
echo "[ 3 ] Finished installing git"
echo "[ 4 ] Installing gcc-multilib..."
sudo apt install gcc-multilib
echo "[ 5 ] Finished installing gcc-multilib"
echo "[ 6 ] Grabbing g++ to compile compiler source..."
sudo apt install g++
echo "[ 7 ] Finished installing g++"
echo "[ 8 ] Grabbing source..."
git clone 