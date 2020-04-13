;11. Read the data using A register and 
;check whether it's palindrome or not.


.model small
.stack 100h
.data
.code

main proc
     
     
     mov cx,0000h; segment
     mov ds,cx
     mov bx,0000h ;offset
     mov al, byte ptr ds:[bx]
     
     mov ah,al
     mov bh,al
     mov cx,8
     
     check:
     shl ah,1
     rcr bh,1
     
     loop check
     
     cmp bh,al
     jne exit
     
     palin:
     mov dl,1h
     hlt
     
     exit:
     mov dl,2h; if not palindrom dl ill store 2h
     hlt
      
endp main
end main