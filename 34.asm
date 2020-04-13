;34. Read data (1 byte) from three consecutive 
;memory locations of MPU 8086 and 
;store the largest number (unsigned/signed) in DL register.



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
     jge  b1  ;if cl greater
     cmp ch,bl
     jge b3    ;if ch greater
     
     b1:
     cmp cl,bl
     jge b2   ;if cl  greater
     mov dl,bl
     hlt
    
     b2:
     mov dl,cl ;largest num cl saved in dl
     hlt
     
     b3:
     cmp ch,bl   
     jge b4      ;if ch is greater
     mov dl,bl   ;largest num dl saved in dl
     hlt
     
     b4:
     mov dl,ch     ;largest num ch saved in dl
     hlt
     
endp main
end main