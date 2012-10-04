command! ToDoToDo call BubbleUpTodo() 

function! BubbleUpTodo()
  :global/^c\s/ move $
  :global/^x\s/ move $
  :global/^\(\(^x\s\|c\s\p\+\)\@!\p\{0,}\)#C\p\{0,}/ move 0
  :global/^\(\(^x\s\|c\s\p\+\)\@!\p\{0,}\)#B\p\{0,}/ move 0
  :global/^\(\(^x\s\|c\s\p\+\)\@!\p\{0,}\)#A\p\{0,}/ move 0
  :write
endfunction

