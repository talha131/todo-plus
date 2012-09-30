" starts with x then space 
syntax match todoDone "^x\s\p\+"
" starts with c then space 
syntax match todoCancelled "^c\s\p\+"
" exclude lines that starts with x space OR c space
" then look for #A. There could be some printable characters before and/or after #A
" This would also handle cases where line starts with #A or ends with #A.
syntax match todoHighestPriority "^\(\(^x\s\|c\s\p\+\)\@!\p\{0,}\)#A\p\{0,}"

highlight todoDone guifg=gray
highlight todoCancelled guifg=DarkGray
highlight todoHighestPriority guifg=red
