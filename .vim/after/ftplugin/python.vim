set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent

autocmd BufferWritePre * %s/\s+$//e

map <buffer> <leader>r :w<CR>:exec '!python' shellescape(@%, 1)<CR>
imap <buffer> <leader>r :w<CR>:exec '!python' shellescape(@%, 1)<CR>


map <buffer> <leader>d :w<CR>:exec '!python -m pytest' shellescape(@%, 1)<CR>
imap <buffer> <leader>d :w<CR>:exec '!python -m pytest' shellescape(@%, 1)<CR>

map <buffer> <leader>b :w<CR>:exec '!black' shellescape(@%, 1)<CR>
imap <buffer> <leader>b :w<CR>:exec '!black' shellescape(@%, 1)<CR>

setlocal path=.,**

