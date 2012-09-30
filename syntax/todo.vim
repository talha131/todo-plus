" starts with x then space 
syntax match todoDone "^x\s\p\+"
" starts with c then space 
syntax match todoCancelled "^c\s\p\+"

highlight todoDone guifg=gray
highlight todoCancelled guifg=DarkGray
