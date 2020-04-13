;32. Read two words and add. Store the result in
; DX register if signed overflow occurs, 
;otherwise store it in CX register.


.model small
.stack 100h
.data
.code

main proc
     
     
    mov ax,5000h
    mov bx,3200h
    add ax,bx
    
    
    jo over
    mov cx,ax; no signed overflow
    hlt
    
    over:
    mov dx,ax; signed overflow
    hlt
     
      
endp main
end main