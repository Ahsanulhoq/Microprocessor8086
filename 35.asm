;35. Read data (1 byte) from three consecutive 
;memory locations of MPU 8086 and store 
;the smallest number (unsigned/signed) in DL register



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
     mov bl, byte ptr ds:[bx]
     
     cmp cl,ch
     jle  b1
     cmp ch,bl
     jle b3 
     
     b1:
     cmp cl,bl
     jle b2
     mov dl,bl
     hlt
    
     b2:
     mov dl,cl
     hlt
     
     b3:
     cmp ch,bl
     jle b4
     mov dl,bl
     hlt
     
     b4:
     mov dl,ch
     hlt
     
endp main
end main