;36. Convert the ASCII value of the decimal 
;digits (0-9) to the numerical value (0-9).


.model small
.stack 100h
.data
.code

main proc
      mov al,30h
      mov cx,10
      
      convert:
      mov dl,al
      sub dl,30h
      inc al
      loop convert
       
       hlt
     
     
     
endp main
end main