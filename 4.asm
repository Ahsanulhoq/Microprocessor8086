;4. Read two data (1 byte) from the last and first memory
;location of a variable port address and write their sum
; in the last even memory location of a fixed port address.


.model small
.stack 100h
.data
.code

main proc
     
     mov dx,0FFFFh
     in al,dx
     mov cl,al
     
     mov dx,0000h
     in al,dx
     mov ch,al
     
     add cl,ch
     
     mov al,cl
     out 0FEh,al
     
endp main
end main