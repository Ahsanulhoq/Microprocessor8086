;31.Read two words and add. Store the result 
;in DX register if unsigned overflow occurs,
; otherwise store it in CX register.


.model small
.stack 100h
.data
.code

main proc
     
     
    mov ax,00001h
    mov bx,0FFFFh
    add ax,bx
    
    
    jc over
    mov cx,ax; no unsigned overflow
    hlt
    
    over:
    mov dx,ax; unsigned overflow
    hlt
     
      
endp main
end main