;9. Read the data using AL register and check whether 
;it's positive or negative.



.model small
.stack 100h
.data
.code

main proc
     
     
     mov cx,0000h; segment
     mov ds,cx
     mov bx,0000h ;offset
     mov al, byte ptr ds:[bx]
     
     cmp al,0h
     jng negative
     
     positive:
     mov dl,1h
     hlt
     
     negative:
     mov dl,2h
     hlt
      
endp main
end main