ALL   := tmux bash vim

install: $(ALL:%=install-%)

install-tmux:
	ln -fs `pwd`/tmux/tmux.conf ~/.tmux.conf

install-bash:
	ln -fs `pwd`/bash/bashrc 	~/.bashrc
	ln -fs `pwd`/bash/bash_aliases 	~/.bash_aliases

install-vim:
	rm -rf ~/.vim
	ln -fs `pwd`/vim ~/.vim
	ln -fs `pwd`/vim/vimrc ~/.vimrc
	git submodule init
	git submodule update
	vim +PluginInstall +qall
