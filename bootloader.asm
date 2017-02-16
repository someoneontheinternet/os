[org 0x7c00]

mov bx, welcome
call printString

jmp $

printString:
  pusha
  mov ah, 0x0e
printLoop:
  mov al, [bx]
  int 0x10
  cmp al, 0x0
  je printStringDone
  add bx, 1
  jmp printLoop
printStringDone:
  popa
  ret

welcome db "Welcome! Press any key to continue...", 0x0

times 510 -($-$$) db 0
dw 0xaa55
