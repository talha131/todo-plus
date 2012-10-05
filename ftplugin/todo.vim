command! ToDoToDo call BubbleUpTodo() 

function! BubbleUpTodo()
  :global/^c\s/ move $
  :global/^x\s/ move $
  :global/^\(\(^x\s\|c\s\p\+\)\@!\p\{0,}\)#C\p\{0,}/ move 0
  :global/^\(\(^x\s\|c\s\p\+\)\@!\p\{0,}\)#B\p\{0,}/ move 0
  :global/^\(\(^x\s\|c\s\p\+\)\@!\p\{0,}\)#A\p\{0,}/ move 0
  :write
endfunction


function! WriteUndoneCount()
  " put the count of lines that don't start with x or c in variable
  redir => counter
  silent %s/^\(\(^x\s\|^c\s\)\@!.\)*$//n
  redir END

  let result = printf("**** %s undone tasks ****", matchstr(counter, '\d\+'))
  let failed = append(0, result)
endfunction
