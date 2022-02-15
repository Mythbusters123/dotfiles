function customvim#MythVim() abort

	" gj gk are better in most cases
	nnoremap k gk
	nnoremap j gj
	nnoremap gk k
	nnoremap gj j

	" map CTRL-C to <ESC>
	imap <C-c> <esc>
	omap <C-c> <esc>
	vmap <C-c> <esc>
	nmap <C-c> <esc>
	cmap <C-c> <esc>

	" Set colorscheme
	let g:lightline = {
		\ 'colorscheme': 'onehalfdark'
		\ }
	if exists('+termguicolors')
		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
		let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
		set termguicolors
	endif
	colorscheme onehalfdark

endfunction
