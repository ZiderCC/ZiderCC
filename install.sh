#/bin/sh

BASE_PATH=`pwd`
VIM_PATH=$HOME/.vim
CNTAGS=tags-cn

#安装vim8.2版本
function vim_8_2_install() {
	echo "Install vim."
	brew install vim
	echo "Install vim done."
}

#安装ctags
function ctags_install() {
    echo "Install ctags."
    brew install ctags
    alias ctags="`brew --prefix`/bin/ctags"
    alias ctags >> ~/.zshrc
    echo "Install ctags done."
}

# 拷贝文件
function files_install()
{
	mkdir -p ~/.vim

    rm -rf ~/.vimrc
	cp ${BASE_PATH}/vimrc ~/.vimrc

    rm -rf ~/.vim/colors
    cp -r ${BASE_PATH}/colors ~/.vim

    rm -rf ~/.vim/autoload
    cp -r ${BASE_PATH}/autoload ~/.vim
}

function plug_install() {
	vim -c "PlugInstall" -c "q" -c "q"
}


#安装主函数
main(){
	vim_8_2_install
    ctags_install
	files_install
	plug_install
}

main
