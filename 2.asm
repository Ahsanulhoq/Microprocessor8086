;Read two number (1 Byte) from first two memory location of a fixed port address 
;and write the sum result in the last memory location of MPU8086

.model small
.stack 100h
.data
.code

main proc

        in al,00h ;Fixed port address in
        mov cl,al ;storing in cl register
        
        in al,01h
        mov ch,al
        
        add cl,ch  ;Adding both value
        
        mov ax,0FFFFh ;Segment
        mov ds,ax
        mov bx,000Fh  ;Offset 
        mov byte ptr ds:[bx],cl ;Storing value in last memory location
         

endp main
end main

