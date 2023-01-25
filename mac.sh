#install homebrew
#echo "for m1 you may need to specify  arch -x86_64 zsh"
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" 
#install vscode 
#curl https://az764295.vo.msecnd.net/stable/6261075646f055b99068d3688932416f2346dd3b/VSCode-darwin-universal.zip -o vscode.zip
#check if shell is zshell
#may need compaudit | xargs chmod g-w
echo "check for zshell"
echo $SHELL | grep zsh
if [ $? -eq 0 ]
then
echo "zshell will be installed"
/bin/bash -c "$(brew install zsh)"
/bin/bash -c "$(echo /usr/local/bin/zsh | sudo tee -a /etc/shells)"
chsh -s /usr/local/bin/zsh
else
echo "zshell found"
fi
