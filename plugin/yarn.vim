" yarn-vim: simple wrapper around yarn package manager
" Version: 0.1
" Maintainer: Gabriele Lippi<gabriele@lippi.net>
" Last modified: 05/08/2018
" License: This script is released under the Vim License.

if exists("ya")
  finish "stop loading the script
endif
let ya=1

let w:packages = ""

" store current compatible-mode in local variable
let s:global_cpo = &cpo
" go into nocompatible-mode
set cpo&vim 

" this function is responsible to retrieve the packages that user want to
" add/upgrade/remove
function s:get_packages(packages)
  if (len(a:packages) > 1)
    let w:packages = join(a:packages[0:], ' ')
  else
    let w:packages = a:packages[0]
  endif
endfunction

function! Ya(...)
  call s:get_packages(a:000[0:])
  let cmd = "yarn add " . w:packages
  execute "!" . cmd
endfunction

" add to devDependencies
function! Yad(...)
  call s:get_packages(a:000[0:])
  let cmd = "yarn add --dev " . w:packages
  execute "!" . cmd
endfunction

" add to peerDependencies
function! Yap(...)
  call s:get_packages(a:000[0:])
  let cmd = "yarn add --peer " . w:packages
  execute "!" . cmd
endfunction


" add to optionalDependencies
function! Yao(...)
  call s:get_packages(a:000[0:])
  let cmd = "yarn add --optional " . w:packages
  execute "!" . cmd
endfunction

" upgrade a dependecy
function! Yu(...)
  call s:get_packages(a:000[0:])
  let cmd = "yarn upgrade " . w:packages
  execute "!" . cmd
endfunction


" start yarn server in a new tab
function! Ys(...)
  let cmd = "yarn start "
  tabnew "Yarn Server"
  normal! ggdG
  execute "!" . cmd
endfunction

command! -nargs=* Ya :call Ya(<f-args>)
command! -nargs=* Yu :call Yu(<f-args>)
command! -nargs=* Yr :call Yr(<f-args>)
command! -nargs=* Yad :call Yad(<f-args>)
command! -nargs=* Yap :call Yap(<f-args>)
command! -nargs=* Yao :call Yao(<f-args>)
command! -nargs=* Ys :call Ys(<f-args>)
