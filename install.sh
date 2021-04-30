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
echo "[ 8 ] Installing python for the compiler..."
sudo apt install python3
echo "[ 9 ] Finished installing python3"
echo "[ 10 ] Grabbing source..."
git clone https://github.com/dunderstab/SembleLang.git
echo "[ 11 ] Finished grabbing source"
echo "[ 12 ] Going into source directory..."
cd SembleLang
echo "[ 13 ] Compiling interface..."
g++ main.cpp -o semble
echo "[ 14 ] Finished compiling interface"
echo "[ 15 ] Changing the mode on the interface binary"
sudo chmod +x semble
echo "[ 16 ] Putting interface in /usr/bin/"
sudo cp semble /usr/bin/
echo "[ 19 ] Removing unneeded files..."
sudo rm semble
sudo rm main.cpp
echo "[ 29 ] Creating source dir..."
mdkir ~/.semble
echo "[ 30 ] Copying source to source dir..."
sudo cp -a . ~/.semble/
echo "[ 34 ] Going back one directory..."
cd ..
echo "[ 35 ] Removing unneeded stuff..."
rm -rf SembleLang
echo "[ 41 ] Would you like to install the VSCode extension? (Y/n)"
read x
if [[ $x -eq "Y" ]]
then
    echo "[ 45 ] Installing the VSCode Extension"
    git clone https://github.com/dunderstab/smb-highlight.git
    cd smb-highlight
    mkdir ~/.vscode/extensions/semble
    sudo cp -a . ~/.vscode/extensions/semble/
    cd ..
    rm -rf smb-highlight
    echo "[ 46 ] Done installing the VSCode Extension"
elif [[ $x -eq "y" ]]
then
    echo "[ 45 ] Installing the VSCode Extension"
    git clone https://github.com/dunderstab/smb-highlight.git
    cd smb-highlight
    mkdir ~/.vscode/extensions/semble
    sudo cp -a . ~/.vscode/extensions/semble/
    cd ..
    rm -rf smb-highlight
    echo "[ 46 ] Done installing the VSCode Extension"
elif [[ $x -eq "yes" ]]
then
    echo "[ 45 ] Installing the VSCode Extension"
    git clone https://github.com/dunderstab/smb-highlight.git
    cd smb-highlight
    mkdir ~/.vscode/extensions/semble
    sudo cp -a . ~/.vscode/extensions/semble/
    cd ..
    rm -rf smb-highlight
    echo "[ 46 ] Done installing the VSCode Extension"
elif [[ $x -eq "Yes" ]]
then
    echo "[ 45 ] Installing the VSCode Extension"
    git clone https://github.com/dunderstab/smb-highlight.git
    cd smb-highlight
    mkdir ~/.vscode/extensions/semble
    sudo cp -a . ~/.vscode/extensions/semble/
    cd ..
    rm -rf smb-highlight
    echo "[ 46 ] Done installing the VSCode Extension"
fi
echo "Done installing SembleLang!"