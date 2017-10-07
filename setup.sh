#/bin/bash

# Varibles
backup=~/dotfiles_backup
dir=$(pwd)
dotfiles=".vimrc .vim .bashrc .gitconfig .tmux.conf .fzf.bash"

# Backup
mkdir -p $backup
echo "Backup dir: $backup"

# Copy files, and create sym links to current dir (~/dotfiles)
for dotfile in $dotfiles; do
	mv ~/$dotfile $backup
	echo "Current $dotfile moved to: $backup"
	ln -s $dir/$dotfile ~/$dotfile
	echo "Symbloic link for $dotfile made in ~"
done

# Dir for backup/swap files
mkdir -p ~/.vim/.backup
mkdir -p ~/.vim/.swap
mkdir -p ~/.vim/.undo
echo "Dirs made for backup/swap/undo files"
