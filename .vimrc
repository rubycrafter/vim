" Конфигурация vim
" Автор: Дмитрий Гречуха (dmitriy.grechukha@gmail.com)
"
" Дополнительные пакеты:
" sudo aptitude install exuberant-ctags, cscope



" --------------------------
"   Основные настройки
" --------------------------

"set shell=bash\ -i
set shell=/bin/zsh

" Отключение совместимости с Vi
set nocompatible

" Сброс типа файла
filetype on
filetype off


" Подключение Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins {{{
Plugin 'gmarik/Vundle.vim'

Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'Yggdroot/indentLine'
Plugin 'bling/vim-airline'
Plugin 'groenewege/vim-less'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'junegunn/vim-easy-align'
Plugin 'leshill/vim-json'
Plugin 'mattn/emmet-vim.git'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'slim-template/vim-slim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/UltiSnips.git'
Plugin 'vim-scripts/guicolorscheme.vim'
Plugin 'vim-scripts/php.vim'
Plugin 'vim-scripts/vim-coffee-script'
Plugin 'vim-scripts/vimwiki.git'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
" }}}

call vundle#end()



filetype plugin on
filetype plugin indent on

let macvim_skip_cmd_opt_movement = 1

" Включение подсветки синтаксиса
syntax on

" Длина строки подсветки синтаксиса
"set synmaxcol=128

" Отображение спецсимволов
set list
set listchars=tab:→→,trail:·,nbsp:·

" Включение дополнительных цветов
set t_Co=256

" Использование цветов для темного фона
set background=dark

" Цветовая схема
"colorscheme vitamins
colorscheme railscasts

" Установка шрифта
set guifont=Droid\ Sans\ Mono\ for\ Powerline:h16

" Если запущен gvim
if has("gui_running")
  " Отключаем панель инструментов
  set guioptions-=T
  " Отключаем левый скролл
  set guioptions-=L
  set guioptions-=l
  " Отключаем правый скролл
  set guioptions-=R
  set guioptions-=r
  " Отключаем меню
  set guioptions-=m
  " Отключение копирования при выделении
  set guioptions-=a
  " Отключение GUI вкладок
  set guioptions-=e
  " Использовать консольные диалоги
  set guioptions+=c
  "Антиалиасинг для шрифтов
  set antialias
endif

" Настройки сессий
set sessionoptions=curdir,buffers,tabpages,folds,options

if has("gui_running")
  let g:session_autoload = 'yes'
  let g:session_autosave = 'yes'
  let g:session_verbose_messages = 1
else
  let g:session_autoload = 'no'
  let g:session_autosave = 'no'
endif

" Языковые установки
set keymap=russian-jcukenwin
set helplang=ru
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Последовательность выбора кодировок при открытии файлов
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

" Порядок применения кодировок и формата файлов
set ffs=unix,mac,dos
set fileencodings=utf8,cp1251

" Формат файла по умолчанию
set fileformat=unix

" Кодировка терминала
set termencoding=utf-8

" Работа с русскими словами (чтобы w, b, * понимали русские слова)
set iskeyword=@,48-57,_,192-255

" Проверка орфографии
set spelllang=ru_yo,en_us

" Заставляем BackSpace работать как x, т.е. удалять предыдущий символ
set backspace=indent,eol,start

" Отключение перехода курсора на след. строку при достижении конца строки
" set whichwrap+=<,>,[,]
set whichwrap=b,s

" Включение нумерации строк
set number

" Отключение переноса длинных строк
set nowrap

" Фолдинг
set nofoldenable
"set foldmethod=syntax
"set foldmethod=indent

" Включение поддержки мыши
set mouse=a
set mousemodel=popup

" Прятать курсор при наборе текста
set mousehide

" Разрешить визуальное выделение мышью
set mouse=nvir

" Отключение перерисовки экрана во время выполнения макроса
set lazyredraw

" Быстрая отрисовка на медленных терминалах
set ttyfast

" Игнорирование регистра при поиске
set ignorecase

" Подсветка результатов поиска
set hlsearch

" Использование инкрементного поиска
set incsearch

" Всегда отображать командную строку
set laststatus=2

" Включение X clipboard
"set clipboard=unnamed

" Количество строк прокрутки при достижении границы
set scrolljump=0

" Количество строк, при достижении которых страница будет прокручиваться
set scrolloff=0

" Разбивать окно горизонтально снизу
set splitbelow

" Разбивать окно вертикально слева
set nosplitright

" Не изменять размеры окон при открытии/закрытии новго окна
set noequalalways

" Всегда отображать табы
set showtabline=2

" Хранить больше истории команд ...
set history=128

" ... и правок
set undolevels=2048

" Сохранение undo после закрытия файла
set undofile
set undodir=~/.vim/undo/

" Запретить создание бэкапов
set nobackup

" Запретить создание swap файлов
set noswapfile

" Выключить виртуальный звонок
if has('gui_macvim')
    set visualbell
else
    set novisualbell
endif
set t_vb=

" Всегда показывать положение курсора
set ruler

" Показывать режим работы
set showmode

" Показывать команды
set showcmd

" И нет детей Уганды
set shortmess+=I

" По умолчанию латинская раскладка
set iminsert=0

" По умолчанию латинская раскладка при поиске
set imsearch=0

" Настройки табуляции
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set shiftround

autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Автоотступы для новых строк
set autoindent
set smartindent

" Отслеживать изменения файлов
set autoread

" Настройки автозавершение
set completeopt=menu,menuone,longest,preview

set complete=""
set complete+=.
set complete+=t
set complete+=k
set complete+=b

" Не переносить комментарий при нажатии o/O
"set formatoptions-=o

" Включает флаг g в командах замены
"set gdefault

" При подсвечивании не переходить к следующему результату
nnoremap * *N

" Отключение подсветки парных скобок
let loaded_matchparen = 1

set noautochdir
let NERDTreeChDirMode = 2
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 1
let NERDTreeWinSize = 30
let NERDTreeAutoDeleteBuffer = 1

let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_open_on_new_tab = 0

if has("gui_running")
  " Подсвечивать текущую строку в GUI режиме
  set cursorline

  " Подсветка длины строки в 100 символов
  "execute 'set colorcolumn=' . join(range(81,335), ',')
  set colorcolumn=101

  " Подсветка файла под курсором
  let NERDTreeHighlightCursorline=1
else
  " Не подсвечивать текущую строку в консоли
  set nocursorline

  " Отключение подсветки файла под курсором в NERDTree
  let NERDTreeHighlightCursorline=0
endif

nmap <silent><s-f3> :NERDTreeFind<cr>
vmap <silent><s-f3> <esc>:NERDTreeFind<cr>
imap <silent><s-f3> <esc>:NERDTreeFind<cr>

" Файловый менеджер
if has('gui_macvim')
  nmap <f3> :NERDTreeToggle /www/<cr>
  vmap <f3> <esc>:NERDTreeToggle /www/<cr>
  imap <f3> <esc>:NERDTreeToggle /www/<cr>
endif

" При редактировании файла всегда переходить на последнюю известную
" позицию курсора. Если позиция ошибочная - не переходим.
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal! g`\"" |
  \ endif

" Автоматически открывать и закрывать окно предпросмотра
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
au CursorMovedI,InsertLeave * silent! pclose

" установка 'leader key'
let mapleader = ','

" Изменить цвет курсора в консоли при изменении режима ввода
if &term =~ "xterm" || &term =~ "xterm-256color" || &term =~ "xterm-new"
  let &t_SI = "\<Esc>]12;red\x7"
  let &t_EI = "\<Esc>]12;white\x7"
endif

" Настройки Emmet
let g:user_emmet_settings = {'indentation': '  '}
let g:use_emmet_complete_tag = 1

" IndentLine
let g:indentLine_enabled = 0
let g:indentLine_indentLevel = 20

" VimWiki
let wiki = {}
let wiki.auto_export = 1
let wiki.path = '~/.vim/wiki/'
let wiki.path_html = '~/.vim/wiki-html/'
let wiki.template_path = '~/.vim/wiki/template/'
let wiki.template_default = 'default'
let wiki.template_ext = '.html'

let g:vimwiki_list = [wiki]
let g:vimwiki_camel_case = 0
let g:vimwiki_browsers = ['google-chrome']
let g:vimwiki_list_ignore_newline = 0
let g:vimwiki_html_header_numbering = 0
let g:vimwiki_hl_headers = 1
let g:vimwiki_use_mouse = 1
let g:vimwiki_menu = ''

" Автокоммит при сохранении wiki-файлов
"function! s:commit_wiki()
  "let l:path = VimwikiGet('path')
  "execute 'cd'.l:path
  "let l:output = system("git add *.wiki")
  "let l:output = system("git commit -am 'auto update'")
  "let l:output = system("git pull origin master")
  "let l:output = system("git push origin master")
"endfunction
"au BufWritePost,FileWritePost,FileAppendPost *.wiki call <SID>commit_wiki()

" UltiSnips
let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'user-snippets']
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsListSnippets = '<a-tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'

let g:dbext_default_use_result_buffer = 1
let g:dbext_default_use_sep_result_buffer = 1



" --------------------------
"   Хоткеи
" --------------------------

" Открытие конфига по ,v
map <silent><leader>v :tabf ~/.vimrc<cr>

" Выход из редактора по двойному Esc
map <esc><esc> <esc>:q!<cr>

" Сохранение файла
map <f2> <esc>:w<cr>
imap <f2> <esc>:w<cr>

map <s-f2> <esc>:retab<cr>:1,$s/[ ]\+$//e<cr>:w<cr>:nohl<cr>
imap <s-f2> <esc>:retab<cr>:1,$s/[ ]\+$//e<cr>:w<cr>:nohl<cr>

" Запуск Ruby приложений по F5
imap <silent><f5> <f2><esc>:w\|!ruby %<cr>
nmap <silent><f5> <f2>:w\|!ruby %<cr>

" Проверка орфографии
map <leader>ts <esc>:set spell!<cr>:set spell?<cr>

" Исправление форматирования при вставке по Ctrl+u
inoremap <silent> <c-u> <Esc>u:set paste<cr>.:set nopaste<cr>gi

" Фикс Ctrl+t
nmap <c-t> <c-rightmouse>

" Новая вкладка
nmap <silent> <leader>tn :tabnew<cr>

" Предыдущая вкладка
map <d-left> :tabp<cr>
nmap <d-left> :tabp<cr>
imap <d-left> <esc>:tabp<cr>i

map <c-a-left> :tabp<cr>
nmap <c-a-left> :tabp<cr>
imap <c-a-left> <esc>:tabp<cr>i

" Следующая вкладка
map <d-right> :tabn<cr>
nmap <d-right> :tabn<cr>
imap <d-right> <esc>:tabn<cr>i

map <c-a-right> :tabn<cr>
nmap <c-a-right> :tabn<cr>
imap <c-a-right> <esc>:tabn<cr>i

" Копирование и вставка в глобальный клипбоард
vmap <c-insert> "+y
nmap <s-insert> "+gP
imap <s-insert> <c-r>+

" Переназначение Home
inoremap <home> <esc>^i
inoremap <s-home> <esc>0i
nnoremap <home> ^
nnoremap <s-home> 0

" При отступах не снимать выделение
vnoremap < <gv
vnoremap > >gv

" Автоматическая табуляция
vmap <Enter> <Plug>(EasyAlign)

" По нажатию Enter переводить строку в нормальном режиме
nmap <cr> O<down><esc>
nmap <s-cr> O<down><esc>

" Перемещение между окнами по Ctrl+Стрелки
if has('gui_macvim')
  map <m-down> <c-w><down>
  imap <m-down> <esc><c-w><c-down>
  map <m-up> <c-w><up>
  imap <m-up> <esc><c-w><c-up>
  noremap <m-left> <c-w><left>
  imap <m-left> <esc><c-w><c-left>
  map <m-right> <c-w><right>
  imap <m-right> <esc><c-w><c-right>
else
  map <c-down> <c-w><down>
  imap <c-down> <esc><c-w><c-down>
  map <c-up> <c-w><up>
  imap <c-up> <esc><c-w><c-up>
  noremap <c-left> <c-w><left>
  imap <c-left> <esc><c-w><c-left>
  map <c-right> <c-w><right>
  imap <c-right> <esc><c-w><c-right>
endif

" Комментирование кода
nmap <c-\> ,ci
vmap <c-\> ,cigv
imap <c-\> <esc>,cii
nmap <d-\> ,ci
vmap <d-\> ,cigv
imap <d-\> <esc>,cii
nmap « ,ci
vmap « ,cigv
imap « <esc>,cii

" Перемещение строки вверх/вниз
map <c-s-down> ddp
map <c-s-up> ddkP

" Отключение стрелок
"inoremap <Up> <NOP>
"inoremap <Down> <NOP>
"inoremap <Left> <NOP>
"inoremap <Right> <NOP>
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>

" Позволяем передвигаться с помощью hjkl в Insert mode зажав <Ctrl>
imap <c-h> <c-o>h
imap <c-j> <c-o>j
imap <c-k> <c-o>k
imap <c-l> <c-o>l

" Создаем пустой сплит относительно текущего
nmap <leader><left> :leftabove vnew<cr>
nmap <leader><right> :rightbelow vnew<cr>
nmap <leader><up> :leftabove new<cr>
nmap <leader><down> :rightbelow new<cr>

" В визуальном режиме по команде * подсвечивать выделение
vnoremap * y :execute ":let @/=@\""<cr> :execute "set hlsearch"<cr>

" Выключение подсветки поиска
map <silent><leader>h <esc>:let @/ = ""<cr>:nohl<cr>:echo "Подсветка выключена!"<cr>

" Сортировка css свойств
noremap <silent><leader>ss <esc>vi{:!sort<cr>:echo "Свойства css отсортированы!"<cr>

" Установка ипа файла
nnoremap <leader>fh  :set ft=html<cr>:echo "Установлен тип файла: HTML"<cr>
nnoremap <leader>fx  :set ft=xml<cr>:echo "Установлен тип файла: XML"<cr>
nnoremap <leader>fp  :set ft=php<cr>:echo "Установлен тип файла: PHP"<cr>
nnoremap <leader>fms :set ft=mysql<cr>:echo "Установлен тип файла: MySQL"<cr>
nnoremap <leader>fc  :set ft=css<cr>:echo "Установлен тип файла: CSS"<cr>
nnoremap <leader>fjs :set ft=javascript<cr>:echo "Установлен тип файла: JavaScript"<cr>
nnoremap <leader>fjc :set ft=coffee<cr>:echo "Установлен тип файла: CoffeeScript"<cr>
nnoremap <leader>fr  :set ft=ruby<cr>:echo "Установлен тип файла: Ruby"<cr>
nnoremap <leader>fmd :set ft=markdown<cr>:echo "Установлен тип файла: Markdown"<cr>

" IndentLine
nmap <leader>i :IndentLinesToggle<cr>:echo ""<cr>


" --------------------------
"  Различные настройки
" --------------------------

" Переключение true/false
:nore <expr> <leader><leader> expand('<cword>') ==# 'true' ? "ciwfalse\<Esc>" :
  \ (expand('<cword>') ==# 'false' ? "ciwtrue\<Esc>" : '')

