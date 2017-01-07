## Kirin Rastogi's dotfiles
Dotfiles for my linux desktop with i3, vi, etc. Almost all files are copied from https://github.com/jackychiu <br/>

## Installing
If you want to checkout my enviroment you can use my setup script or manually copy paste all the dotfiles into your `~` dir
```bash 
git clone https://github.com/JackyChiu/dotfiles.git
cd dotfiles
./setup.sh
```

If you don't have Vundle for vim installed in your `.vim` dir
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Install plugins for vim
```bash
vim ~/.vimrc
:PluginInstall
```

## Desktop image with vim
![desktop](img/desktop.png)
