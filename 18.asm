;18. Set the MSB/ESB of BL register.


.model small
.stack 100h
.data
.code

main proc
     
     
    mov bl,16
    mov bh,1; to set 1 in lsb
    shr bl,1; shifted lsb to cf
    rcr bh,1; rotated set bit to cf
    rcl bl,1; rotated cf to bl's lsb 
    
    mov bh,1; to set 1 in msb
    shl bl,1; shifted msb to cf
    rcr bh,1 ; rotated set bit to cf
    rcr bl,1; rotated cf to bl's msb
     
    
    
     
      
endp main
end main