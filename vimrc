" General Settings ---------------------- {{{
augroup general_settings
    au!
    let mapleader = ","
    set tabstop=4 shiftwidth=4 expandtab

    map j gj
    map k gk

    syntax on
    filetype on
    filetype plugin on
    filetype plugin indent on
augroup END
" }}}


" Pathogen Settings ---------------------- {{{
augroup pathogen_settings
    au!
    filetype off
    call pathogen#infect()
    filetype plugin indent on
augroup END
" }}}

" NREDTree Settings ---------------------- {{{
augroup nerdtree_settings
    au!
    let NERDTreeIgnore = ['\.pyc$']
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.pyo,*/build/*
    " map <C-n> :NERDTreeToggle<CR>
    " autocmd vimenter * NERDTree
    " autocmd vimenter * if !argc() | NERDTree | endif
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
augroup END
" }}}

" Tlist Settings ---------------------- {{{
augroup tlist_settings
    au!
    let Tlist_Auto_Highlight_Tag=1
    let Tlist_Auto_Open=0
    let Tlist_Auto_Update=1
    let Tlist_Display_Tag_Scope=1
    let Tlist_Exit_OnlyWindow=1
    let Tlist_Enable_Dold_Column=1
    let Tlist_File_Fold_Auto_Close=1
    let Tlist_Show_One_File=1
    let Tlist_Use_Right_Window=1
    let Tlist_Use_SingleClick=1
augroup END
" }}}

" Flake8 Settings ---------------------- {{{
augroup flask8_settings
    au!
    " autocmd BufWritePost *.py call Flake8()
    let g:flake8_ignore="E501,W293,E127,E128,E126"
    let g:flake8_max_line_length=100
augroup END
" }}}

" Pyflaske Settings ---------------------- {{{
augroup pyflasks_settings
    au!
    let g:pyflakes_use_quickfix = 1
augroup END
" }}}

" BlameMe Settings ---------------------- {{{
augroup blameme_settings
    au!
    function Gb()
      execute "!" . "git blame". " " . bufname("%") . " \| less -R"
    endfunction
    function Nb()
      execute "!" . "svn blame". " " . bufname("%") . " \| less -R"
    endfunction
    nnoremap <Leader>gb :call Gb()<cr>
    vnoremap <Leader>gb :call Gb()<cr>
    nnoremap <Leader>nb :call Nb()<cr>
    vnoremap <Leader>nb :call Nb()<cr>
augroup END
" }}}
