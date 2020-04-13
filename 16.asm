;16. Check whether the lower nibble of AL is greater than 9 or not.


.model small
.stack 100h
.data
.code

main proc
     
     
    mov al,16
    mov bl,0
    mov cx,4
    
    check:
    shr al,1
    rcr bl,1
    loop check
    
    shr bl,4; shifting 4 bits to compare with 9
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