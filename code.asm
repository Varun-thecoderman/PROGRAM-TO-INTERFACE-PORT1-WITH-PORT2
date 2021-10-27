org 00h
back :
jb p1.0,loop
mov p2,#00h
sjmp back
loop:
mov p2,#0ffh
acall delay
Ljmp back
delay:
mov r0,#255
extern :
mov r1,#255
intern :
djnz r1,intern
djnz r0,extern
ret
end
