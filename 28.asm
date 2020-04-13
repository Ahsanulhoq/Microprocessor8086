;28. Check whether lower nibble of AL register
; is equal to higher nibble of AL.


.model small
.stack 100h
.data
.code

main proc
     
     
    mov al,0CCh
    mov bl,al
    mov bh,al
    
    mov cx,4
    high:
    rcl bl,1;storing msb in cf and rotaing
    rcr dl,1;storing msb in another reg(loop will store high nibble)
    
    loop high 
    
    mov cx,4
    low:
    rcl bl,1;storing msb in cf and rotaing
    rcr dh,1;storing msb in another reg(loop will store high nibble)
    
    loop low
    
    cmp dh,dl
    jz ok
    jnz no
    
    ok:
    mov bl,3h; if high and low nibble equal
    hlt
    
    no:
    mov bl,2h ; if not equal
    hlt
     
      
endp main
end main