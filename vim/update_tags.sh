#!/bin/bash

mkdir -p ~/.vim/tags/
cd ~/.vim/tags

wget http://www.vim.org/scripts/download_script.php?src_id=9178 -O cpp_src.tar.bz2
tar xjf cpp_src.tar.bz2
ctags -R --sort=1 --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f cpp cpp_src

ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f gl /usr/include/GL/   # for OpenGL
ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f sdl /usr/include/SDL/ # for SDL
ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f qt4 /usr/include/qt4/ # for QT4

ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f gtkmm /usr/include/gtkmm-2.4/ # for gtkmm-2.4

