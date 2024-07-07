syntax on
set nu
set rnu
set shiftwidth=2
set softtabstop=2
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
  "execute 'w | !g++ -o ' . rootName . ' ' . fileName . ' && ' . executablePath
   execute 'w | !g++ ' . fileName . ' && a.exe' 
endfunction

" Map keys to compile and run current file
map <Leader><space> :call Run()<CR>

function! In1()
  let fileName = expand('%')
  let rootName = substitute(fileName, '\.[^.]*$', '', '')
  let executablePath = expand('%:p:h') . '/' . rootName
   execute 'w | !g++ ' . fileName . ' && a.exe <in1' 
endfunction
nnoremap <C-q> :call In1()<CR>

function! In2()
  let fileName = expand('%')
  let rootName = substitute(fileName, '\.[^.]*$', '', '')
  let executablePath = expand('%:p:h') . '/' . rootName
   execute 'w | !g++ ' . fileName . ' && a.exe <in2' 
endfunction
nnoremap <C-w> :call In2()<CR>

function! In3()
  let fileName = expand('%')
  let rootName = substitute(fileName, '\.[^.]*$', '', '')
  let executablePath = expand('%:p:h') . '/' . rootName
   execute 'w | !g++ ' . fileName . ' && a.exe <in3' 
endfunction
nnoremap <C-e> :call In3()<CR>
