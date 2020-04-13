;33. Add two bytes and check the result stored 
;in AL for an auxiliary carry or half carry.



.model small
.stack 100h
.data
.code

main proc
     
     
    mov al,88h
    mov ah,al
    mov bl,8h
    add al,bl
    
    ror ah,4;exchanged lower nibble to higher
    ror bl,4;exchanged lower nibble to higher
    add ah,bl
    jc aux ;if carry(as AF cant be accessed so exchanged nibble and tested carry)
    
    mov dl,3h ;if no auxillary carry
    hlt
    
    aux:
    mov dl,4h ;if auxillary carry
    hlt
    
         
    
   
     
      
endp main
end main