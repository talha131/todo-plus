" starts with x then space 
syntax match todoDone "^x\s\p\+"
" starts with c then space 
syntax match todoCancelled "^c\s\p\+"
" todo highest priority
syntax match todoHighestPrioroty "#A\|#a"

highlight todoDone guifg=gray
highlight todoCancelled guifg=DarkGray
highlight todoHighestPrioroty guifg=red
