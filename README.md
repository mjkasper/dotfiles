## Dotfiles

This repository contains my personal dotfiles, which I like to install on any new machine I am going to be using for development purposes.

Among these dotfiles, there three main components:

1. Bash configurations (`~/.bashrc` and `~/.bash_profile`).
2. NeoVim and associated plugins.
3. Git configurations.

In addition to all of my configuration files, this repository also contains two scripts that are useful when installing this setup on a new machine. 

In `settings.sh`, you will find all the installation settings that are used when porting this setup to a new computer for the first time. There are several flags defined, each with an appropriate description--feel free to edit the settings to configure what you want to be installed and where.

The script `install.sh` reads the settings and installs all of the appropriate software and configuration files. To use my setup:

```
git clone https://github.com/mjkasper/dotfiles.git
cd dotfiles
./install.sh
```

When you open Vim for the first time, it may complain that the Solarized color scheme is not installed. This is because the first time you use Vim, you'll have to run the `:PlugInstall` command to install color schemes and all other necessary plugins. After this, you should be able to restart Vim and have it function normally. By default, this will install plugins such as:

- [NERDTree](https://github.com/scrooloose/nerdtree)
- [NERDCommenter](https://github.com/scrooloose/nerdcommenter)
- [NeoSolarized](https://github.com/icymind/NeoSolarized)
- [ctrlp](https://github.com/kien/ctrlp.vim)
- [lightline](https://github.com/itchyny/lightline.vim)
- [vim-surround](https://github.com/tpope/vim-surround)

To add your own plugins, simply list them between the `plug#begin` and `plug#end` lines at the top of your `init.vim`
as follows:

```
call plug#begin('~/.config/nvim/plugged')
...
<your desired plugins here>
...
call plug#end()
```

Then, start up Vim and re-run `:PlugInstall` to install your new plugins.
