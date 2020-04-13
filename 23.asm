;23. Reverse the data or number stored in AL/AX register.

.model small
.stack 100h
.data
.code

main proc
     
     
    mov al,19h
    mov cx,8
    mov bl,0
    l1:
    shr al,1
    rcl bl,1
    loop l1
    mov al,bl
    hlt
    
     
      
endp main
end main