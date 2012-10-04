" starts with x then space 
syntax match todoDone "^x\s\p\+"
" starts with c then space 
syntax match todoCancelled "^c\s\p\+"
" todo highest priority
syntax match todoHighestPrioroty "#A\|#a"
syntax match todoMediumPrioroty "#B\|#b"
syntax match todoLowestPrioroty "#C\|#c"

highlight todoDone guifg=gray
highlight todoCancelled guifg=DarkGray
highlight todoHighestPrioroty guifg=Red
highlight todoMediumPrioroty guifg=DarkRed
highlight todoLowestPrioroty guifg=LightRed
