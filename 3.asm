;3 Read two data (1 byte) from the last and first memory 
;location of MPU 8086 and write their sum in 
;the last even memory location of a fixed port address.

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
     
     mov al,cl
     out 0FEh,al
     
endp main
end main