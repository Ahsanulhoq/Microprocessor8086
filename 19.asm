;19. Clear the MSB/LSB of CL register.

.model small
.stack 100h
.data
.code

main proc
     
     
    mov cl,145
    mov bh,0; to clear 1 in lsb
    shr cl,1; shifted lsb to cf
    rcr bh,1; rotated clear bit to cf
    rcl cl,1; rotated cf to bl's lsb 
    
    mov bh,0; to clear kept 0 in msb
    shl cl,1; shifted msb to cf
    rcr bh,1 ; rotated clear bit to cf
    rcr cl,1; rotated cf to bl's msb
     
    
    
     
      
endp main
end main