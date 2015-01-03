# install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# use python from homebrew, so don't need sudo for pip any more
brew install python
cd /usr/bin
sudo mv python python.save
sudo ln -s /usr/local/bin/python python

# install latest pip
brew install wget
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
pip install -r requirements.txt

brew install macvim --override-system-vim
brew install mysql
brew install mongo
brew install redis
