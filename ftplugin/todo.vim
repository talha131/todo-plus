command! ToDoToDo call TriageList()

function! TriageList()
  call RemoveUndoneCount()
  call BubbleUpTodo()
  call WriteUndoneCount()
  :write
endfunction

function! BubbleUpTodo()
  :global/^c\c\s/ move $
  :global/^x\c\s/ move $
  :global/^\(\(^x\s\|c\s\p\+\)\@!\p\{0,}\)#C\c\p\{0,}/ move 0
  :global/^\(\(^x\s\|c\s\p\+\)\@!\p\{0,}\)#B\c\p\{0,}/ move 0
  :global/^\(\(^x\s\|c\s\p\+\)\@!\p\{0,}\)#A\c\p\{0,}/ move 0
endfunction

function! RemoveUndoneCount()
  " remove previous line if present
  silent 1global/\*\{4} \d\+ undone tasks \*\{4}/ delete
endfunction

function! WriteUndoneCount()
  " put the count of lines that don't start with x or c in variable
  redir => counter
  silent %s/^\(\(^x\c\s\|^c\c\s\)\@!.\)*$//n
  redir END

  let result = printf("**** %s undone tasks ****", matchstr(counter, '\d\+'))
  let failed = append(0, result)
endfunction
