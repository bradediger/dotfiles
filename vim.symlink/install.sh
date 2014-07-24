if [ ! -f ~/.vimrc ]; then
  ln -s ~/.vim/vimrc ~/.vimrc
fi

( cd ~/.dotfiles && git submodule update --init )

( cd ~/.vim/bundle/command-t/ruby/command-t &&
  ruby extconf.rb &&
  make )
