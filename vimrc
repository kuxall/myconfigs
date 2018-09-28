let $BASH_ENV = "~/.bash_aliases"
augroup autoprofilechange
	autocmd!
	autocmd VimEnter * :silent exec "!tosolarized"
	autocmd VimLeave * :silent exec "!todefault"
	autocmd VimLeave * :silent exec "!konsoleprofile 'ColorScheme=UbuntuDefault'"
	autocmd VimEnter * redraw!
	autocmd BufNewFile *.cpp 0r ~/.vim/skeleton/cpp.skeleton | execute 'norm Gdd14G' | star!
	autocmd BufWritePre *.cpp %s/\s\+$//e
augroup END
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set background=dark
set t_Co=256
set term=screen-256color
let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme solarized8

set spelllang=en
set spellfile=$HOME/.vim/spell/english.utf-8.spl.add
"AUTOCOMPLETES
"imap <buffer> ;; <C-[>/###<CR>c3l
"nmap <buffer> ;; /###<CR>c3l
"imap <buffer> ;wl <C-O>mvwhile ( ### ) {<CR><tab>###<CR><backspace>}###<C-O>'v;;
"imap <buffer> ;fo <C-O>mzfor ( ###; ###; ### ) {<CR><tab>###<CR><backspace>}###<C-O>'z;;
"imap <buffer> ;if <C-O>myif ( ### ) {<CR><tab>###<CR><backspace>}###<C-O>'y;;
"imap <buffer> ;el <C-O>mx else {<CR><tab>###<CR><backspace>}###<C-O>'x;;
"imap <buffer> ;ei <C-O>mw else if ( ### ) {<CR><tab>###<CR><backspace>}###<C-O>'w;;

nnoremap o o<Space><BS>
nnoremap O O<Space><BS>
inoremap <CR> <CR><Space><BS>
nnoremap C <Esc>
nnoremap Ci< f<ci<

"nnoremap Ci( f(ci(
"nnoremap Ca( f(ca(
"nnoremap Ci" f"ci"
"nnoremap Ca" f"ca"
"nnoremap Ci{ f{ci"
"nnoremap Ca{ f{ca"

"let left_delim = ['<', '(', '{', '[', '"', "'"]
"let right_delim = ['>', ')', '}', ']', '"', "'"]

"function! Delim_idx(delim)
	"let idx = -1
	"for i in range(4)
		"if a:delim == g:left_delim[i] || a:delim == g:right_delim[i]
			"let l:idx = i
			"break
		"endif
	"endfor
	"return l:idx
"endfunction

"function! Is_left_delim(delim)
	"let lcount = 0
	"let rcount = 0
	"for i in range(4)
		"if a:delim == g:left_delim[i]
			"let l:lcount = 1
			"break
		"elseif a:delim == g:right_delim[i]
			"let l:rcount = 1
			"break
		"endif
	"endfor
	"let left = 1
	"if l:rcount > 0
		"let l:left = 0
	"endif
	"return l:left
"endfunction

"function! Surround(delim, iaround)
	"delim is any left delimiter
	"iaround is ('a' -> around) or ('i' -> inner)
	"r = row and c = column of cursor where the command is invoked
	"text is the current line of text
	"let r = line('.')
	"let c = col('.')
	"let text = getline('.')
	"if l:text[l:c - 1] != a:delim
		"execute "normal! f" . a:delim
		"let idxR = col('.')
		"call cursor(r,c)
		"execute "normal! F" . a:delim
		"let	idxL = col('.') 
	"endif
"endfunction

"onoremap i< :call Surround('<', 'i')
"onoremap i> :call Surround('>', 'i')
"onoremap i' :call Surround("'", 'i')
"onoremap i" :call Surround('"', 'i')
"onoremap i( :call Surround('(', 'i')
"onoremap i) :call Surround(')', 'i')
"onoremap i{ :call Surround('{', 'i')
"onoremap i} :call Surround('}', 'i')
"onoremap i[ :call Surround('[', 'i')
"onoremap i] :call Surround(']', 'i')

"onoremap a< :call Surround('<', 'a')
"onoremap a> :call Surround('>', 'a')
"onoremap a' :call Surround("'", 'a')
"onoremap a" :call Surround('"', 'a')
"onoremap a( :call Surround('(', 'a')
"onoremap a) :call Surround(')', 'a')
"onoremap a{ :call Surround('{', 'a')
"onoremap a} :call Surround('}', 'a')
"onoremap a[ :call Surround('[', 'a')
"onoremap a] :call Surround(']', 'a')
py3 from random import randint as rand
set noesckeys
set hlsearch
set incsearch
