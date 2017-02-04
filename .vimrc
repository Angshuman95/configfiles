" Attempt to determine the type of a file based on its name and possibly its
" contents.  Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
	filetype indent plugin on
	filetype plugin on

" enable syntax processing
    syntax enable 
    set background=dark
    colorscheme wombat256mod

" number of visual spaces per TAB
    set tabstop=4 

" number of spaces in tab when editing
    set softtabstop=4 
		set expandtab

" show line numbers    
    set number 

" show command in bottom bar
    set showcmd 

" highlight current line
    set cursorline 

" load filetype-specific indent files    
    filetype indent on 

" visual autocomplete for command menu    
    set wildmenu 

" highlight matching [{()}]    
    set showmatch 
    
" search as characters are entered
    set incsearch 
    
" highlight matches
    set hlsearch 
    
set guifont=hack\ 11

" Turn off line wrap
"    set nowrap 

" Avoid compatability errors
    set nocompatible

" Enable use of the mouse for all modes
	set mouse=a

" Use visual bell instead of beeping when doing something wrong
	set visualbell

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
	set t_vb=


" Display the cursor position on the last line of the screen or in the status line of a window
" Always display the status line, even if only one window is displayed 
	set ruler laststatus=2 title 

" Stop certain movements from always going to the first character of a line.
	set nostartofline

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
	set autoindent

" Allow backspacing over autoindent, line breaks and start of insert action
	set backspace=indent,eol,start

" Modelines have historically been a source of security vulnerabilities.  As
" such, it may be a good idea to disable them and use the securemodelines
	set nomodeline

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
	set hidden

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
	set confirm

" Execute pathogen
    execute pathogen#infect()
    call pathogen#helptags()

" NERDTree
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
    set encoding=utf-8
    let NERDTreeWinSize=25
