;10. Read the data using CL register and 
;check whether it's odd or even

.model small
.stack 100h
.data
.code

main proc
     
     
     mov cx,0000h; segment
     mov ds,cx
     mov bx,0000h ;offset
     mov cl, byte ptr ds:[bx]
     
     mov al,cl
     mov bl,2h
     div bl
     
     cmp ah,0h
     jne odd
     
     even:
     mov dl,1h
     hlt
     
     odd:
     mov dl,2h
     hlt
      
endp main
end main