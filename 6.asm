;6. Read two data from the last and first memory
;location of MPU 8086 and store their sum 
;in the last even memory location of MPU 8086, 
;if the sum is greater than 5.


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
     
     add cl,ch
     cmp cl,5h
     jg l1
     jmp exit
     
     l1:
     mov ax,0FFFFh
     mov ds,ax
     mov bx,000Eh
     mov byte ptr ds:[bx],cl
      
     exit:
     hlt
      
endp main
end main