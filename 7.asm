;7. Read two data from the last and first memory location
;of MPU 8086 and perform the subtraction
;operation Store the result in the last memory location
;of a variable port address if the result is positive, 
;otherwise store in the first memory location
; of a fixed port address.


.model small
.stack 100h
.data
.code

main proc
     
     mov ax,0FFFFh
     mov ds,ax
     mov bx,000Fh
     mov ch, byte ptr ds:[bx]
     
     mov ax,0000h
     mov ds,ax
     mov bx,0000h
     mov cl, byte ptr ds:[bx]
     
     sub cl,ch
     mov al,cl
     cmp cl,0h
     jg l1
     jmp negative
     
     l1:
     mov dx,0FFFFh
     out dx,al
      
     negative:
     out 00h,al
      
endp main
end main