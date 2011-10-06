" Конфигурация vim
" Автор: Дмитрий Гречуха (dmitriy.grechukha@gmail.com)
"
" Дополнительные пакеты:
" sudo aptitude install exuberant-ctags, cscope



" --------------------------
"   Основные настройки
" --------------------------

" Настройки Pathogen

filetype off

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin on
filetype plugin indent on

" Если запущен gvim
if has("gui_running")
    set guifont=Monospace

    colorscheme vitamins

    " Отключаем панель инструментов
    set guioptions-=T
    " Отключаем левый скролл
    set guioptions-=L

    "Антиалиасинг для шрифтов
    set antialias

    " Опции сессии
    set sessionoptions=curdir,buffers,tabpages ",resize,winpos,winsize

    " Сохранение сессии
    autocmd VimLeavePre * silent mksession! ~/.vim/lastSession.vim
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
set ffs=unix,dos,mac
set fileencodings=utf8,cp1251

" Формат файла по умолчанию
set ff=unix

" Кодировка терминала
set termencoding=utf-8

" Работа с русскими словами (чтобы w, b, * понимали русские слова)
set iskeyword=@,48-57,_,192-255

" Заставляем BackSpace работать как x, т.е. удалять предыдущий символ
set backspace=indent,eol,start whichwrap+=<,>,[,]

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
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" Включение поддержки мыши
set mouse=a
set mousemodel=popup

" Прятать курсор при наборе текста
set mousehide

" Разрешить визуальное выделение мышью
set mouse=nvir

" Отключение совместимости с Vi
set nocompatible

" Отключение перерисовки экрана во время выполнения макроса
set lazyredraw

" Игнорирование регистра при поиске
set ignorecase

" Подсветка результатов поиска
set hlsearch

" Использование инкрементного поиска
set incsearch

" Формат строки состояния
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
set laststatus=2

" Включение X clipboard
set clipboard=unnamed

" Количество строк прокрутки при достижении границы
set scrolljump=0

" Количество строк, при достижении которых страница будет прокручиваться
set scrolloff=0

" Всегда отображать статусную строку для каждого окна
set laststatus=2

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
set novisualbell
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

" Отключение подсветки парных скобок
let loaded_matchparen = 1

set autochdir
let NERDTreeChDirMode=2

if has("gui_running")
    " Подсвечивать текущую строку в GUI режиме
    set cursorline

    " Автоматическое открытие NERDTree
    au VimEnter *  NERDTree /home/www/

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

" Автоматически открывать и закрывать окно предпросмотра
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
au CursorMovedI,InsertLeave * silent! pclose

" Автодополнение по табу
"let g:SuperTabDefaultCompletionType = '<C-X><C-O>'
"let g:SuperTabDefaultCompletionType = 'context'

" установка 'leader key'
let mapleader = ","

" Изменить цвет курсора в консоли при изменении режима ввода
if &term =~ "xterm"
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
let g:user_zen_settings = { 'indentation' : '    ' }
let g:use_zen_complete_tag = 1

" Включение режима вклейки
set pastetoggle=<s-f2>



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
"imap <silent> <f5> <Esc>:w\|!python %<cr>
"nmap <silent> <f5> :w\|!python %<cr>

" Проверка орфиграфии
map <s-f1> <esc>:setlocal spell spelllang=ru<cr>
imap <s-f1> <esc>:setlocal spell spelllang=ru<cr>i
map <c-s-f1> <esc>:setlocal spell spelllang=<cr>
imap <c-s-f1> <esc>:setlocal spell spelllang=<cr>i

" Исправление форматирования при вставке по Ctrl+u
inoremap <silent> <c-u> <Esc>u:set paste<cr>.:set nopaste<cr>gi

" Предыдущая вкладка Shift+Tab
map <c-pageup> :tabp<cr>
nmap <c-pageup> :tabp<cr>
imap <c-pageup> <esc>:tabp<cr>i

" Следующая вкладка Сtrl+Tab
map <c-pagedown> :tabn<cr>
nmap <c-pagedown> :tabn<cr>
imap <c-pagedown> <esc>:tabn<cr>i

" Перемещение закладок по Alt+СтрелкаВлево и Alt+СтрелкаВправо
nnoremap <silent> <a-left> :execute 'silent! tabmove ' . (tabpagenr()-2)<cr>
nnoremap <silent> <a-right> :execute 'silent! tabmove ' . tabpagenr()<cr>

" Копирование и вставка в глобальный клипбоард
vmap <c-insert> "+yi
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
vmap <leader>a= :Tabularize /=<cr>
vmap <leader>a: :Tabularize /:<cr>
vmap <leader>a> :Tabularize /=><cr>

" По нажатию Enter переводить строку в визуальном режиме
nmap <cr> O<down><esc>
nmap <s-cr> O<down><esc>

" Перемещение между окнами по Ctrl+Стрелки
map <c-down> <c-w><down>
imap <c-down> <esc><c-w><c-down>
map <c-up> <c-w><up>
imap <c-up> <esc><c-w><c-up>
map <c-left> <c-w><left>
imap <c-left> <esc><c-w><c-left>
map <c-right> <c-w><right>
imap <c-right> <esc><c-w><c-right>

" Файловый менеджер
nmap <f3> :NERDTreeToggle /home/www/<cr>
vmap <f3> <esc>:NERDTreeToggle /home/www/<cr>
imap <f3> <esc>:NERDTreeToggle /home/www/<cr>

" Список буферов
"nmap <f4> <esc>:BufExplorer<cr>
"imap <f4> <esc>:BufExplorer<cr>
"vmap <f4> <esc>:BufExplorer<cr>

" Комментирование кода
nmap <c-\> ,ci
vmap <c-\> ,cigv
imap <c-\> <esc>,cii

" Перемещение строки вверх/вниз
map <c-s-down> ddp
map <c-s-up> ddkP

" Фикс Ctrl+t
nmap <c-t> <c-rightmouse>

" Выключение подсветки поиска
map <silent><leader>h <esc>:nohl<cr>:echo "Подсветка выключена!"<cr>

" Сортировка css свойств
noremap <silent><leader>ss <esc>vi{:!sort<cr>:echo "Свойства css отсортированы!"<cr>

" Форматирование css
noremap <silent><leader>ct <esc>:%!~/.vim/plugin/cssformatter.py<cr>:echo "Свойства css отформатированы!"<cr>

" phpDoc
source ~/.vim/bundle/php-doc/php-doc.vim
inoremap <c-p> <esc>:call PhpDocSingle()<cr>i
nnoremap <c-p> :call PhpDocSingle()<cr>
vnoremap <c-p> :call PhpDocRange()<cr>




" --------------------------
"  Различные настройки
" --------------------------

" Автоматическая установка chmod a+x при сохранении скриптов
function! ModeChange()
if getline(1) =~ "^#!"
if getline(1) =~ "/bin/"
    silent !chmod a+x <afile>
endif
endif
endfunction
au BufWritePost * call ModeChange()


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

