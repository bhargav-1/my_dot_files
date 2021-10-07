
"""""""""""""""""""""""""""""""""""""
" Allan MacGregor Vimrc configuration
"""""""""""""""""""""""""""""""""""""
set encoding=utf-8

"""" START Vundle Configuration

" Disable file type for vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
"Plugin 'BufOnly.vim'
"Plugin 'wesQ3/vim-windowswap'
Plugin 'SirVer/ultisnips'
"Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'luochen1990/rainbow'
"Plugin 'godlygeek/tabular'
"Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'benmills/vimux'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'gilsondev/searchtasks.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-dispatch'
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'
" Generic Programming Support
Plugin 'honza/vim-snippets'
" Plugin 'Townk/vim-autoclose' , commenting to fix pumvisible error
Plugin 'tomtom/tcomment_vim'
Plugin 'tobyS/vmustache'
Plugin 'janko-m/vim-test'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'vim-syntastic/syntastic'
Plugin 'neomake/neomake'

" Markdown / Writting
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'LanguageTool'

" Git Support
Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-fugitive'
Plugin 'jreybert/vimagit'
"Plugin 'jaxbot/github-issues.vim'

" PHP Support
"Plugin 'phpvim/phpcd.vim'
Plugin 'tobyS/pdv'

" Erlang Support
Plugin 'vim-erlang/vim-erlang-tags'
Plugin 'vim-erlang/vim-erlang-runtime'
Plugin 'vim-erlang/vim-erlang-omnicomplete'
Plugin 'vim-erlang/vim-erlang-compiler'

" Elixir Support
Plugin 'elixir-lang/vim-elixir'
Plugin 'avdgaag/vim-phoenix'
Plugin 'mmorearty/elixir-ctags'
Plugin 'mattreduce/vim-mix'
Plugin 'BjRo/vim-extest'
Plugin 'frost/vim-eh-docs'
Plugin 'tpope/vim-endwise'
Plugin 'jadercorrea/elixir_generator.vim'
Plugin 'mhinz/vim-mix-format'

" Elm Support
Plugin 'lambdatoast/elm.vim'

" Theme / Interface
"Plugin 'AnsiEsc.vim'
"Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'junegunn/limelight.vim'
Plugin 'mkarmona/colorsbox'
Plugin 'romainl/Apprentice'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'chriskempson/base16-vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'AlessandroYorba/Sierra'
Plugin 'daylerees/colour-schemes'
Plugin 'effkay/argonaut.vim'
Plugin 'ajh17/Spacegray.vim'
Plugin 'atelierbram/Base2Tone-vim'
Plugin 'colepeters/spacemacs-theme.vim'
Plugin 'dylanaraps/wal.vim'
Plugin 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }


Plugin 'arcticicestudio/nord-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'easymotion/vim-easymotion'
" Plugin 'terryma/vim-multiple-cursors'
Plugin 'jiangmiao/auto-pairs'
Plugin 'sheerun/vim-polyglot'
Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}

"Plugin for removing whitespaces
Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()            " required
filetype plugin indent on    " required
"""" END Vundle Configuration

"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""
set nowrap

" OSX stupid backspace fix
set backspace=indent,eol,start

" Show linenumbers
set number

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1


" Enable highlighting of the current line
set cursorline

" Theme and Styling
syntax on
set t_Co=256

" if (has("termguicolors"))
"   set termguicolors
" endif

"let base16colorspace=256  " Access colors present in 256 colorspace
"colorscheme challenger_deep
"let g:challenger_deep_termcolors = 256
colorscheme minimalist
set background =dark

let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme ='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1


" Syntastic Configuration
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_enable_elixir_checker = 1
" let g:syntastic_elixir_checkers = ["elixir"]

" Neomake settings
autocmd! BufWritePost * Neomake
let g:neomake_elixir_enabled_makers = ['mix', 'credo', 'dogma']

" Vim-PDV Configuration
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

" Markdown Syntax Support
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END


" Vim-Supertab Configuration
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" Settings for Writting
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
let g:languagetool_jar  = '/opt/languagetool/languagetool-commandline.jar'

" Vim-pencil Configuration
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" Vim-UtilSnips Configuration
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical" " If you want :UltiSnipsEdit to split your window.


" Neocomplete Settings
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" function! s:my_cr_function()
"   " For no inserting <CR> key.
" endfunction
"
" Close popup by <Space>.

" vim-mix-format
" let g:mix_format_on_save = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" Elixir Tagbar Configuration
let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records',
        \ 't:tests'
    \ ]
    \ }

" Fzf Configuration
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
"""""""""""""""""""""""""""""""""""""
" map <C-F> :NERDTreeToggle<CR>
" map <C-n> :TagbarOpen fj<CR>
" map <C-m> :TagbarClose<CR>


" Omnicomplete Better Nav
" inoremap <expr> <c-j> ("\<C-n>")
" inoremap <expr> <c-k> ("\<C-p>")
"
" Neocomplete Plugin mappins
" inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()
"
"Recommended key-mappings.
"<CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"
" "<TAB>: completion.
"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"
" " Mapping selecting Mappings
" nmap <leader><tab> <plug>(fzf-maps-n)
" xmap <leader><tab> <plug>(fzf-maps-x)
" omap <leader><tab> <plug>(fzf-maps-o)
"
" " Shortcuts
" nnoremap <Leader>o :Files<CR>
" nnoremap <Leader>O :CtrlP<CR>
" nnoremap <Leader>w :w<CR>
"
"
" " Insert mode completion
" imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
" imap <c-x><c-j> <plug>(fzf-complete-file-ag)
" imap <c-x><c-l> <plug>(fzf-complete-line)
"
" " Vim-Test Mappings
" nmap <silent> <leader>t :TestNearest<CR>
" nmap <silent> <leader>T :TestFile<CR>
" nmap <silent> <leader>a :TestSuite<CR>
" nmap <silent> <leader>l :TestLast<CR>
" nmap <silent> <leader>g :TestVisit<CR>
"
" " Vim-PDV Mappings
" autocmd FileType php inoremap <C-p> <ESC>:call pdv#DocumentWithSnip()<CR>i
" autocmd FileType php nnoremap <C-p> :call pdv#DocumentWithSnip()<CR>
" autocmd FileType php setlocal omnifunc=phpcd#CompletePHP
"
" Disable arrow movement, resize splits instead.
" if get(g:, 'elite_mode')
" 	nnoremap <Up>    :resize +2<CR>
" 	nnoremap <Down>  :resize -2<CR>
" 	nnoremap <Left>  :vertical resize +2<CR>
" 	nnoremap <Right> :vertical resize -2<CR>
" endif
"
" map <silent> <LocalLeader>ws :highlight clear ExtraWhitespace<CR>
"
" " Advanced customization using autoload functions
" inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
"
"
"
"""""""""newwwwwwwwwwwwwwww""""""""""""""""""""""""

set secure
set mouse=a
set clipboard=unnamedplus
filetype plugin indent on
"augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer
 " autopep8
"augroup END

let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}
"au FileType c,cpp,java setlocal equalprg=astyle
"map to <Leader>cf in C++ code
"  autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
"  autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
"  " if you install vim-operator-user
"  autocmd FileType c,cpp,objc map <buffer><Leader>x
"  "<Plug>(operator-clang-format)
"   " Toggle auto formatting:
" nmap <Leader>C :ClangFormatAutoToggle<CR>
"
"
" enable this for autoformating

autocmd FileType cpp ClangFormatAutoEnable

set number
set wildmenu
cnoremap w!! execute silent! write !sudo tee % >/dev/null' <bar> edit!
"syntax enable
"colorscheme corporation_modified

"colorscheme CodeFactoryv3

" ==== Colors and other basic settings
"colorscheme gruvbox
"colorscheme Atelier_HeathDark
"let g:gruvbox_italicize_comments = '1'
"let g:airline_theme = 'gruvbox'
"set guifont=Monospace\ 10
"set fillchars+=vert:\$

"syntax enable
"set background=dark
set ruler
set hidden
set incsearch
set hlsearch
set showmode
set ttimeout
set ignorecase
set wildmenu
set autoread
set backspace=indent,eol,start
set number
set laststatus=2
set smartindent
set st=4 sw=4 et
set shiftwidth=4
set tabstop=4
let &colorcolumn="80"
"hi Comment ctermfg=DarkGray
"highlight Comment ctermbg=Blue ctermfg=White

" ==== NERDTREE
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']
let g:NERDTreeWinSize=60
map <C-f> :NERDTreeToggle<CR>

let NERDTreeShowHidden=0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeQuitOnOpen=1 " closes upon opening a file in nerdtree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0

" ==== Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
" set statusline+=TIME:\ %{strftime('%c')}
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_mri_args = "--config=$HOME/.jshintrc"
let g:syntastic_python_checkers = [ 'pylint', 'flake8', 'pep8', 'pyflakes', 'python']
let g:syntastic_yaml_checkers = ['jsyaml']
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_cpp_cpplint_exec = 'cpplint'

let g:clang_library_path='/usr/lib/llvm-3.6/lib/libclang-3.6.so.1'
" === flake8
let g:flake8_show_in_file=1
let g:clang_format#code_style='google'

let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -3,
            \ "Standard" : "C++11",
            \ "SpacesBeforeTrailingComments" : 3}


" ==== Easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

let g:DoxygenToolkit_briefTag_pre="@brief  "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@return "
let g:DoxygenToolkit_blockHeader="----------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------"
let g:DoxygenToolkit_authorName="ULC Robotics "
"let g:DoxygenToolkit_licenseTag="MIT License"   <-- !!! Does not end with "
"\<enter>"
"let g:DoxygenToolkit_licenseTag="ULC Robotics Copyrights"
"<-- !!! Does not end with
"\<enter>"



" Add spaces after comment delimiters by default
 let g:NERDSpaceDelims = 1

 " Use compact syntax for prettified multi-line comments
 let g:NERDCompactSexyComs = 1

 " Align line-wise comment delimiters flush left instead of following code
 " indentation
 let g:NERDDefaultAlign = 'left'

 " Set a language to use its alternate delimiters by default
 let g:NERDAltDelims_java = 1

 " Add your own custom formats or override the defaults
 let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

 " Allow commenting and inverting empty lines (useful when commenting a
 "region)
 let g:NERDCommentEmptyLines = 1

 " Enable trimming of trailing whitespace when uncommenting
  let g:NERDTrimTrailingWhitespace = 1

 " Enable NERDCommenterToggle to check all selected lines is commented or not
 let g:NERDToggleCheckAllLines = 1
 execute pathogen#infect()
 set pastetoggle=<F2>

" Auto Complete of brackets
" vim auto pair plugin installed
"
let  g:C_UseTool_cmake    = 'yes'
let  g:C_UseTool_doxygen = 'yes'

" YCMMMM
"
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_show_diagnostics_ui = 1
"
"" YouCompleteMe options
"
"
let g:ycm_register_as_syntastic_checker = 1
" let g:Show_diagnostics_ui = 1 "default 1
"
""will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
""highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1
let g:ycm_max_diagnostics_to_display = 200000

let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''

let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>>'
" let g:ycm_echo_current_diagnostic = 1
let g:ycm_complete_in_comments = 0


let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info


let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
" let g:ycm_global_ycm_extra_conf = '~/git_stuff/ctr/ctr_ws/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
" let g:ycm_extra_conf_globlist ='~/git_stuff/ctr/ctr_ws/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 1


let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_key_invoke_completion = '<C-Space>'
map <F4> :YcmCompleter FixIt<CR>

let g:rainbow_active = 1
" SOunds

"let g:keysound_enable = 1
"let g:keysound_theme = 'default' " default typewriter mario sword bubbl
"let g:keysound_py_version = 3
"let g:keysound_volume = 350
" inoremap <c:-s> <c-o>:Update<CR>
" nmap <c-g> :w<CR>
" imap <c-g> <Esc>:w<CR>a
"
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors=0
hi IndentGuidesEven ctermbg=black
hi IndentGuidesOdd ctermbg=darkgrey
set ts=4 sw=4 et
let g:indent_guides_start_level =2
let g:indent_guides_guide_size =1


"
let  g:C_UseTool_cmake    = 'yes'
let  g:C_UseTool_doxygen = 'yes'

highlight ColorColumn ctermbg=gray
set colorcolumn=80


" set clipboard+=unnamed  " use the clipboards of vim and win
" set paste               " Paste from a windows or from vim
" set go+=a               " Visual selection automatically copied to the clipboard
" "


"vim cpp octol highliting commands
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

"Vim ros commands
let g:ycm_semantic_triggers = {
\   'roslaunch' : ['="', '$(', '/'],
\   'rosmsg,rossrv,rosaction' : ['re!^', '/'],
\   'cpp,cuda,objcpp': ['->', '.', '::'],
\}

nnoremap <Space> i_<Esc>r
let g:better_whitespace_ctermcolor='Blue'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
set tags=tags


