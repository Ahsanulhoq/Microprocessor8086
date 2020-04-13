;22. Change the bits of the BL register those are 
;oddly indexed (1-7), given that indexing start from 0.


.model small
.stack 100h
.data
.code

main proc
     
     
    mov bl,0FFh
    mov cl,01010101b
    xor bl,cl 
    hlt
    
     
      
endp main
end main