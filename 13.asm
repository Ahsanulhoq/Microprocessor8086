;13. Read the data using BL register from 
;the last memory location of MPU 8086 
;and count the number of 0's in BL register



.model small
.stack 100h
.data
.code

main proc
     
     
     mov cx,0FFFFh; segment
     mov ds,cx
     mov bx,000Fh ;offset
     mov bl, byte ptr ds:[bx]
     mov ah,0h
     mov cx,8
     
     check:
     shl bl,1
     jc zr
     jnc plus
     plus:
     inc ah
     zr:
     loop check
     
     hlt
     
      
endp main
end main