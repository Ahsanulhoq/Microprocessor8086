;17. Check whether the higher nibble of CH
; is greater than 9 or not



.model small
.stack 100h
.data
.code

main proc
     
     
    mov ch,70h
    mov al,ch
    mov bl,0
    mov cx,4
    
    check:
    shl al,1
    rcl bl,1
    loop check
    
    
    cmp bl,9h
    jg l1
    jng l2
    
    l1:
    mov dl,2h;if greater than 9
    hlt
    l2:
    mov dl,3h;if less than 9
    hlt
     
    
    
     
      
endp main
end main