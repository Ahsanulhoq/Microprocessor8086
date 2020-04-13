;8. Read two positive numbers from two consecutive 
;memory location of MPU 8086 and store the 
;larger number in a fixed port address 


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
     
     
     cmp cl,ch
     jg l1
     jng l2
     
     l1:
     mov al,cl;movinglarge data to al to show in por address 
     out 00h,al
     hlt
     
     l2:
     mov al,ch
     out 00h,al
     hlt 
endp main
end main