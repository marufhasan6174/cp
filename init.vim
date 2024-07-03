syntax on
set nu
set rnu
set shiftwidth=4
set softtabstop=4
set mouse=n
imap jj <Esc>
set guifont=*
set belloff=all
set clipboard=unnamed

" Compile
function! Compile()
     let fileName = expand('%')
    execute 'w | !g++ ' fileName
endfunction


" Compile and run C++ program in subshell
function! Run()
  let fileName = expand('%')
  let rootName = substitute(fileName, '\.[^.]*$', '', '')
  " Get the full path to the compiled executable
  let executablePath = expand('%:p:h') . '/' . rootName
  " Compile the code and run
  execute 'w | !g++ -o ' . rootName . ' ' . fileName . ' && ' . executablePath
endfunction

" Map keys to compile and run current file
map <Leader><Space> :call Run()<CR>
