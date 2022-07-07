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

#安装vim中文手册
function vim_help_cn_install() {
	echo 'Install vim help cn.'
	cd vimdoc_zh/doc
	for i in *.cnx; do
		if [ ! -d ${VIM_PATH}/doc ]; then
			rm -f ${VIM_PATH}/doc
			mkdir -p ${VIM_PATH}/doc
		fi
		install -m 644 $i ${VIM_PATH}/doc/$i
	done
	echo "install -m 644 ${CNTAGS} ${VIM_PATH}/doc/${CNTAGS}"
	install -m 644 ${CNTAGS} ${VIM_PATH}/doc/${CNTAGS}
    cd ..
    if [ ! -d ${VIM_PATH}/syntax ]; then
		rm -f ${VIM_PATH}/syntax
		mkdir -p ${VIM_PATH}/syntax
    fi
    echo "install -m 644 syntax/help_cn.vim ${VIM_PATH}/syntax/help_cn.vim"
    install -m 644 syntax/help_cn.vim ${VIM_PATH}/syntax/help_cn.vim
    if [ ! -d ${VIM_PATH}/plugin ]; then
    	rm -f ${VIM_PATH}/plugin
    	mkdir -p ${VIM_PATH}/plugin
    fi
    echo "install -m 644 plugin/vimcdoc.vim ${VIM_PATH}/plugin/vimcdoc.vim"
    install -m 644 plugin/vimcdoc.vim ${VIM_PATH}/plugin/vimcdoc.vim
	echo 'Install vim help cn done.'
	cd ${BASE_PATH}
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
	vim_help_cn_install
	files_install
	plug_install
}

main
