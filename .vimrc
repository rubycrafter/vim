"
" Конфигурация vim
" Автор: Дмитрий Гречуха (dmitriy.grechukha@gmail.com)
"
" Дополнительные пакеты:
" sudo aptitude install exuberant-ctags, cscope



" --------------------------
"   Основные настройки
" --------------------------

" Отключение совместимости с Vi
set nocompatible

" Сброс типа файла
filetype off


" Подключение Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" repos on github
"Bundle 'tetsuo13/Vim-PHP-Doc'
"Bundle 'godlygeek/tabular'
"Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'acustodioo/vim-tmux'
"Bundle 'gregsexton/MatchTag'
Bundle 'hail2u/vim-css3-syntax'
"Bundle 'hallison/vim-markdown'
"Bundle 'itspriddle/vim-jquery'
Bundle 'leshill/vim-json'
Bundle 'mattn/zencoding-vim'
Bundle 'mutewinter/vim-indent-guides'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'shawncplus/php.vim'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tsaleh/vim-align'
Bundle 'vim-scripts/PDV--phpDocumentor-for-Vim'
Bundle 'vim-scripts/UltiSnips.git'
Bundle 'vim-scripts/guicolorscheme.vim'
Bundle 'vim-scripts/php.vim'
Bundle 'vim-scripts/vimwiki.git'

" vim-scripts repos
"Bundle 'indexer.tar.gz'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'


" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles



filetype plugin on
filetype plugin indent on

let macvim_skip_cmd_opt_movement = 1

" Если запущен gvim
if has("gui_running")
    if has('gui_macvim')
        set guifont=DejaVu\ Sans\ Mono:h14
    else
        set guifont=Monospace
    endif

    colorscheme vitamins

    " Отключаем панель инструментов
    set guioptions-=T
    " Отключаем левый скролл
    set guioptions-=L
    " Отключаем меню
    set guioptions-=m
    " Отключение копирования при выделении
    set guioptions-=a

    "Антиалиасинг для шрифтов
    set antialias

    " Опции сессии
    set sessionoptions=curdir,buffers,tabpages ",resize,winpos,winsize

    " Сохранение сессии
    autocmd VimLeavePre * silent mksession! $HOME/.vim/session.vim
    "autocmd VimEnter * silent execute 'source $HOME/.vim/session.vim'
endif

" Использование цветов для темного фона
set background=dark

" Включение подсветки синтаксиса
syntax on

" Отображение спецсимволов
set list
set listchars=tab:→→,trail:·,nbsp:·

" Включение дополнительных цветов
set t_Co=256

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
set foldenable
"set foldmethod=indent
"set foldmethod=marker
"set foldmarker={,}

" Сохранение и восстановление фолдинга
"au BufWinLeave * silent! mkview
"au BufWinEnter * silent! loadview

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
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set shiftround

" Автоотступы для новых строк
set autoindent
set nosmartindent

" Отслеживать изменения файлов
set autoread

" Настройки автозавершение
set completeopt=menu,menuone,longest,preview

set complete=""
set complete+=.
set complete+=t
set complete+=k
set complete+=b

" Включение меню
set wildmenu
set wildmode=list:longest,full
set wcm=<tab>

" Не переносить комментарий при нажатии o/O
"set formatoptions-=o

" Включает флаг g в командах замены
"set gdefault

" При подсвечивании не переходить к следующему результату
nnoremap * *N

" Цвет ~
"highlight NonText ctermfg=bg guifg=bg

" Цвет номера текущей строки
highlight CursorLineNr guifg=#999999

" Формат строки состояния
"set statusline=
"set statusline+=%(\ %m%)            " флаг 'файл изменен'
"set statusline+=\ %y                " тип
"set statusline+=\ %{&ff}            " формат
"set statusline+=\ %{&fileencoding}  " кодировка
"set statusline+=\ %F                " полный путь
"set statusline+=\ %{FileSize()}     " размер
"set statusline+=\ %r                " флаг 'только для чтения'
"set statusline+=%=                  " разделитель лево/право
"set statusline+=%l/%L               " текущая строка / всего строк
"set statusline+=\ %c                " текущая колонка
"set statusline+=\ %p%%              " позиция в файле
"set statusline+=\                   " пробел вконце

" Отключение подсветки парных скобок
let loaded_matchparen = 1
set noautochdir
let NERDTreeChDirMode=2
let NERDTreeDirArrows=1

if has("gui_running")
    " Подсвечивать текущую строку в GUI режиме
    set cursorline

    " Подсветка длины строки в 80 символов
    set colorcolumn=81

    " Автоматическое открытие NERDTree
    if has('gui_macvim')
        au VimEnter * NERDTree /Users/www/
    else
        au VimEnter * NERDTree /home/www/
    endif

    " Подсветка файла под курсором
    let NERDTreeHighlightCursorline=1
else
    " Не подсвечивать текущую строку в консоли
    set nocursorline

    " Отключение подсветки файла под курсором
    let NERDTreeHighlightCursorline=0
endif

" При редактировании файла всегда переходить на последнюю известную

" позицию курсора. Если позиция ошибочная - не переходим.
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal! g`\"" |
    \ endif

" Включение автодополнения
au FileType python set omnifunc=pythoncomplete#Complete
au FileType php set omnifunc=phpcomplete#CompletePHP
au FileType html set omnifunc=htmlcomplete#CompleteTag
au FileType xml set omnifunc=xmlcomplete#CompleteTag
au FileType javascript set omnifunc=javascriptcomplete#CompleteJ
au FileType css set omnifunc=csscomplete#CompleteC
au FileType ruby setl sw=2 sts=2 et

" Автоматически открывать и закрывать окно предпросмотра
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
au CursorMovedI,InsertLeave * silent! pclose

" Автокоммит при сохранении wiki-файлов
function! s:commit_wiki()
    let l:path = VimwikiGet('path')
    execute 'cd'.l:path
    "let l:output = system("git init")
    let l:output = system("git add *.wiki")
    let l:output = system("git commit -am 'auto update'")
    let l:output = system("git pull origin master")
    let l:output = system("git push origin master")
endfunction

au BufWritePost,FileWritePost,FileAppendPost *.wiki call <SID>commit_wiki()

" Автодополнение по табу
"let g:SuperTabDefaultCompletionType = '<C-X><C-O>'
"let g:SuperTabDefaultCompletionType = 'context'

" установка 'leader key'
let mapleader = ','

" Изменить цвет курсора в консоли при изменении режима ввода
if &term =~ "xterm" || &term =~ "xterm-256color"
    let &t_SI = "\<Esc>]12;red\x7"
    let &t_EI = "\<Esc>]12;white\x7"
endif

" Настройки подсветки отступов
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_auto_colors = 0
let g:indent_guides_color_change_percent = 5
let g:indent_guides_guide_size = 1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=grey18 ctermbg=4
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=grey18 ctermbg=4

" Если запущен gvim
if has("gui_running")
    " Настройки для Indexer
    let g:indexer_ctagsCommandLineOptions = '-h ".php" --exclude=".git/*" --tag-relative=yes --php-kinds=cifv --language-force=php'
    let g:indexer_ctagsDontSpecifyFilesIfPossible = 1
    let g:indexer_disableCtagsWarning = 1
endif

" Настройки ZenCoding'а
let g:user_zen_settings = {'indentation': '    '}
let g:use_zen_complete_tag = 1

" VimWiki
let wiki = {}
let wiki.path = '~/.vim/wiki/'
let wiki.nested_syntaxes = {'python': 'python', 'php': 'php', 'css': 'css', 'javascript': 'javascript', 'html': 'html', 'mysql': 'mysql'}
let g:vimwiki_list = [wiki]
let g:vimwiki_camel_case = 0
let g:vimwiki_browsers = ['google-chrome']
let g:vimwiki_html_header_numbering = 2

:hi VimwikiHeader1 guifg=#FF0000
:hi VimwikiHeader2 guifg=#00FF00
:hi VimwikiHeader3 guifg=#FF00FF
:hi VimwikiHeader4 guifg=#00FFFF
:hi VimwikiHeader5 guifg=#FFFF00
:hi VimwikiHeader6 guifg=#FFFFFF

" UltiSnips
let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'snippets']
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsListSnippets = '<a-tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Powerline
"let Powerline_symbols = 'fancy'
let Powerline_colorscheme = 'timlar'

" PHP Doc
let g:pdv_cfg_Type = 'mixed'
let g:pdv_cfg_Package = ''
let g:pdv_cfg_Version = '$id$'
let g:pdv_cfg_Author = 'Dmitriy Grechukha <dmitriy.grechukha@gmail.com>'
let g:pdv_cfg_Copyright = 'Dmitriy Grechukha'
let g:pdv_cfg_License = 'PHP Version 5.3 {@link http://www.php.net/license/}'

" Включение режима вклейки
"set pastetoggle=<f9>



" --------------------------
"   Хоткеи
" --------------------------

" Открытие конфига по ,v
map <silent><leader>v :tabf ~/.vimrc<cr>

" Обновление сниппетов
map <silent><leader>sm :call ReloadAllSnippets()<cr>:echo "Сниппеты перезагружены"<cr>

" Выход из редактора по двойному Esc
map <esc><esc> <esc>:q!<cr>

" Сохранение файла
map <f2> <esc>:w<cr>
imap <f2> <esc>:w<cr>

map <s-f2> <esc>:retab<cr>:1,$s/[ ]\+$//e<cr>:w<cr>:nohl<cr>
imap <s-f2> <esc>:retab<cr>:1,$s/[ ]\+$//e<cr>:w<cr>:nohl<cr>

" Запуск python приложений по F5
"imap <silent><f5> <f2><esc>:w\|!python2.7 %<cr>
"nmap <silent><f5> <f2>:w\|!python2.7 %<cr>




" Запуск unit-теста
function! RunUnitTest()
    " Если находимся в окне предпросмотра ...
    if &previewwindow
        " Удаляем буфер
        bdelete
        " Закрываем окно предпросмотра
        pclose
        " Очищаем командную строку
        echo ''
        " Завершаем работу
        return
    endif

    " Если не найден паттерн теста ...
    if len(matchstr(expand('%:p'), 'tests/unit')) == 0
        " Завершаем работу
        return
    endif

    echo 'Тест запущен...'

    redraw

    " Получаем путь, имя файла и выполняем тест
    let l:path = substitute(expand('%:p'), 'unit.*$', '', 'g')
    let l:file = substitute(expand('%:p'), '^.*tests/', '', 'g')
    let l:output = system('cd '.l:path.' && phpunit '.l:file)

    " Создаем новое окно предпросмотра
    silent pedit! 'PHPUnit'

    " Переключаемся на окно предпросмотра
    wincmd P

    " Устанавливаем параметры окна
    setlocal buftype=nofile
    setlocal bufhidden=hide
    setlocal modifiable

    " Вставляем в окно результат работы phpunit
    silent put = l:output

    " Удаляем первую пустую строку ...
    execute ':1d'
    " ... и строку с файлом конфигурации
    execute ':2,3d'

    " Изменяем размер окна предпросмотра под размер текста
    silent execute 'resize '.line('$')

    " Подсветка результатов
    call matchadd('PHPUnitBold', '^PHPUnit.*$')
    call matchadd('PHPUnitBold', '^There was.*failure.*$')
    call matchadd('PHPUnitFail', '^FAILURES.*$')
    call matchadd('PHPUnitOK', '^OK .*$')
    call matchadd('PHPUnitAssertFail', '^Failed asserting.*$')

    " Запрет редактирования текста в окне
    setlocal nomodifiable

    " Переход наверх
    execute 'normal gg'

    echo 'Тест завершен!'
endfunction

" Цвета для подсветки результатов
highlight default PHPUnitBold term=bold gui=bold
highlight default PHPUnitFail term=bold gui=bold ctermbg=Red ctermfg=White guibg=Red guifg=White
highlight default PHPUnitOK term=bold gui=bold ctermbg=DarkGreen ctermfg=White guibg=DarkGreen guifg=White
highlight default PHPUnitAssertFail ctermfg=Red guifg=Red

" Привязка клавиш
imap <silent><f5> <esc>:call RunUnitTest()<cr>
nmap <silent><f5> <esc>:call RunUnitTest()<cr>

" Проверка орфографии
map <leader>ts <esc>:set spell!<cr>:set spell?<cr>

" Исправление форматирования при вставке по Ctrl+u
inoremap <silent> <c-u> <Esc>u:set paste<cr>.:set nopaste<cr>gi

" Фикс Ctrl+t
nmap <c-t> <c-rightmouse>

" Новая вкладка
nmap <silent> <leader>tn :tabnew<cr>

" Предыдущая вкладка
map <c-a-left> :tabp<cr>
nmap <c-a-left> :tabp<cr>
imap <c-a-left> <esc>:tabp<cr>i

" Следующая вкладка
map <c-a-right> :tabn<cr>
nmap <c-a-right> :tabn<cr>
imap <c-a-right> <esc>:tabn<cr>i

" Перемещение закладок по Alt+СтрелкаВлево и Alt+СтрелкаВправо
"nnoremap <silent> <a-left> :execute 'silent! tabmove ' . (tabpagenr()-2)<cr>
"nnoremap <silent> <a-right> :execute 'silent! tabmove ' . tabpagenr()<cr>

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
"vmap <leader>a= :Align =<cr>
"vmap <leader>a: :Align :<cr>
"vmap <leader>a> :Align =><cr>

" По нажатию Enter переводить строку в нормальном режиме
nmap <cr> O<down><esc>
nmap <s-cr> O<down><esc>

" Перемещение между окнами по Ctrl+Стрелки
if has('gui_macvim')
    map <m-down> <c-w><down>
    imap <m-down> <esc><c-w><c-down>
    map <m-up> <c-w><up>
    imap <m-up> <esc><c-w><c-up>
    map <m-left> <c-w><left>
    imap <m-left> <esc><c-w><c-left>
    map <m-right> <c-w><right>
    imap <m-right> <esc><c-w><c-right>
else
    map <c-down> <c-w><down>
    imap <c-down> <esc><c-w><c-down>
    map <c-up> <c-w><up>
    imap <c-up> <esc><c-w><c-up>
    map <c-left> <c-w><left>
    imap <c-left> <esc><c-w><c-left>
    map <c-right> <c-w><right>
    imap <c-right> <esc><c-w><c-right>
endif

" Файловый менеджер
if has('gui_macvim')
    nmap <f3> :NERDTreeToggle /Users/www/<cr>
    vmap <f3> <esc>:NERDTreeToggle /Users/www/<cr>
    imap <f3> <esc>:NERDTreeToggle /Users/www/<cr>
else
    nmap <f3> :NERDTreeToggle /home/www/<cr>
    vmap <f3> <esc>:NERDTreeToggle /home/www/<cr>
    imap <f3> <esc>:NERDTreeToggle /home/www/<cr>
endif

" Комментирование кода
nmap <c-\> ,ci
vmap <c-\> ,cigv
imap <c-\> <esc>,cii
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

" Автодополнение слова
inoremap <c-space> <c-n>

" В визуальном режиме по команде * подсвечивать выделение
vnoremap * y :execute ":let @/=@\""<cr> :execute "set hlsearch"<cr>

" Выключение подсветки поиска
map <silent><leader>h <esc>:let @/ = ""<cr>:nohl<cr>:echo "Подсветка выключена!"<cr>

" Сортировка css свойств
noremap <silent><leader>ss <esc>vi{:!sort<cr>:echo "Свойства css отсортированы!"<cr>

" Форматирование css
noremap <silent><leader>ct <esc>:%!~/.vim/plugin/cssformatter.py<cr>:echo "Свойства css отформатированы!"<cr>

" phpDoc
inoremap <c-p> <esc>:call PhpDocSingle()<cr>i
nnoremap <c-p> :call PhpDocSingle()<cr>
vnoremap <c-p> :call PhpDocRange()<cr>


menu <silent> FileType.php :set ft=php<cr>
menu <silent> FileType.html :set ft=html<cr>
menu <silent> FileType.mysql :set ft=mysql<cr>

map <f8> :emenu FileType.<tab><tab>




" --------------------------
"  Различные настройки
" --------------------------

" Переключение true/false
:nore <expr> <leader><leader> expand('<cword>') ==# 'true' ? "ciwfalse\<Esc>" :
      \ (expand('<cword>') ==# 'false' ? "ciwtrue\<Esc>" : '')


" Строка состояния

function! FileSize()
    let bytes = getfsize(expand("%:p"))
    if bytes <= 0
        return "-"
    endif
    if bytes < 1024
        return bytes . " B"
    else
        return (bytes / 1024) . " K"
    endif
endfunction


" Задаем собственные функции для назначения имен заголовкам табов -->
function! MyTabLine()
    let tabline = ''
    " Формируем tabline для каждой вкладки -->
        for i in range(tabpagenr('$'))
            " Подсвечиваем заголовок выбранной в данный момент вкладки.
            if i + 1 == tabpagenr()
                let tabline .= '%#TabLineSel#'
            else
                let tabline .= '%#TabLine#'
            endif
            " Устанавливаем номер вкладки
            let tabline .= '%' . (i + 1) . 'T'
            " Получаем имя вкладки
            let tabline .= ' %{MyTabLabel(' . (i + 1) . ')} |'
        endfor
    " Формируем tabline для каждой вкладки <--
    " Заполняем лишнее пространство
    let tabline .= '%#TabLineFill#%T'
    " Выровненная по правому краю кнопка закрытия вкладки
    if tabpagenr('$') > 1
        let tabline .= '%=%#TabLine#%999XX'
    endif
    return tabline
endfunction

function! MyTabLabel(n)
    let label = ''
    let buflist = tabpagebuflist(a:n)
    " Имя файла и номер вкладки -->
        let label = substitute(bufname(buflist[tabpagewinnr(a:n) - 1]), '.*/', '', '')
        if label == ''
            let label = '[No Name]'
        endif
        let label .= ' (' . a:n . ')'
    " Имя файла и номер вкладки <--
    " Определяем, есть ли во вкладке хотя бы один
    " модифицированный буфер.
    " -->
        for i in range(len(buflist))
            if getbufvar(buflist[i], "&modified")
                let label = '[+] ' . label
                break
            endif
        endfor
    " <--
    return label
endfunction

function! MyGuiTabLabel()
    return '%{MyTabLabel(' . tabpagenr() . ')}'
endfunction

set tabline=%!MyTabLine()
set guitablabel=%!MyGuiTabLabel()

