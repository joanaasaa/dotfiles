# dotfiles by joanaasaa

Hello everyone! 👋

I use this setup on:

- Mac with the iTerm2 terminal app 
- Ubuntu with GNOME Terminal

These dotfiles are for the following applications:

- Zsh (themes: af-magic, dracula)
- Vim (themes: dracula)
- Tmux (themes: af-magic, dracula)

Useless to say that I'm a dracula fan! 🧛

## Setup
1. Start by cloning this repo. Preferably do this in your home folder: \
```git clone https://github.com/joanaasaa/dotfiles.git``` \
A folder named ```dotfiles``` will be created with the repo.

2. Change to the ```dotfiles``` directory: \
```cd dotfiles```

3. Crete soft links in your home folder to the ```.zshrc```, ```.vimrc``` and ```.tmux.conf``` files in this repo: \
```ln -s ./.zshrc ~/.zshrc``` \
```ln -s ./.vimrc ~/.vimrc``` \
```ln -s ./.tmux.conf ~/.tmux.conf```

4. Copy the ```dracula.zsh-theme``` to the folder with all of the others oh-my-zsh theme files: \
```cp ./dracula.zsh-theme ~/.oh-my-zsh/themes/```


