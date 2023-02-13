set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent

autocmd BufWritePre * %s/\s+$//e

" See description here:
" https://stackoverflow.com/questions/73302468/write-python-black-reformat-on-vim-buffer-black-and-e-working-in-one-step
set formatprg=black\ -q\ 2>/dev/null\ --stdin-filename\ %\ -

map <buffer> <leader>r :w<CR>:exec '!python' shellescape(@%, 1)<CR>
imap <buffer> <leader>r :w<CR>:exec '!python' shellescape(@%, 1)<CR>


map <buffer> <leader>d :w<CR>:exec '!python -m pytest' shellescape(@%, 1)<CR>
imap <buffer> <leader>d :w<CR>:exec '!python -m pytest' shellescape(@%, 1)<CR>

"map <buffer> <leader>b :w<CR>:exec '!black -q %'<CR>
map <buffer> <leader>b :w<CR>gggqG<CR>

setlocal path=.,**

if !exists("current_compiler")
	compiler python
endif
