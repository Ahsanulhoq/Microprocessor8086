;Read two data(1 byte) from the last and first memory location of MPU8086
;and store their sum in the last even memory location of MPU8086


.model small
.stack 100h
.data
.code
main proc
     
     mov ax,0FFFFh  ;Segment
     mov ds,ax
     mov bx,000Fh   ;Offset
     mov ch, byte ptr ds:[bx] ;Read data to ch register from last memory location
     
     mov ax,0000h   ;Segment
     mov ds,ax
     mov bx,0000h   ;Offset
     mov cl, byte ptr ds:[bx] ;Read data to cl register from first memory location
     
     add cl,ch
     
     mov ax,0FFFFh   ;Segment
     mov ds,ax
     mov bx,000Eh    ;Offset
     mov byte ptr ds:[bx],cl  ;Store data from cl register to last even memory location
     
endp main
end main