" starts with x then space 
syntax match todoDone "^x\c\s\p\+"
" starts with c then space 
syntax match todoCancelled "^c\c\s\p\+"
" todo highest priority
syntax match todoHighestPrioroty "#A\c"
syntax match todoMediumPrioroty "#B\c"
syntax match todoLowestPrioroty "#C\c"
syntax match todoStatusLine "\*\{4}\s\d\+\sundone\stasks\s\*\{4}"

highlight todoDone guifg=gray
highlight todoCancelled guifg=DarkGray
highlight todoHighestPrioroty guifg=Red
highlight todoMediumPrioroty guifg=DarkRed
highlight todoLowestPrioroty guifg=LightRed
highlight todoStatusLine gui=underline guifg=DarkBlue
