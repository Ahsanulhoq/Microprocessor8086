;5. Read three numbers (1 byte) from three consecutive memory
;locations of MPU 8086 and write the result in a
; variable port address (any).

.model small
.stack 100h
.data
.code

main proc
     
     mov ax,0000h
     mov ds,ax
     mov bx,0000h
     mov cl, byte ptr ds:[bx]
     
     mov bx,0001h
     mov ch, byte ptr ds:[bx]
     
     mov bx,0002h
     mov dl, byte ptr ds:[bx]
     
     add cl,ch
     add cl,dl
     
     mov al,cl
     mov dx,0000h
     out dx,al
     
endp main
end main