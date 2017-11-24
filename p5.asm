.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
prompt1 BYTE "Enter the first grade",0
prompt2 BYTE "Enter the seconf grade",0
prompt3 BYTE "Enter the third grade",0
prompt4 BYTE "Enter the fourth grade",0
inp BYTE 40 DUP(?)
result BYTE 11 DUP(?),0
result1 BYTE 11 DUP(?),0
res1 BYTE "The Sum is :",0
res2 BYTE "The Average is :",0
num1 dword ?
num2 dword ?
.CODE
MainProc Proc
 input prompt1,inp,40
 atod inp
 mov num1,eax
 input prompt2,inp,40
 atod inp
 add num1,eax
 input prompt3,inp,40
 atod inp
 add num1,eax
 input prompt4,inp,40
 atod inp
 add num1,eax
 mov eax,num1 
 dtoa result,eax
 mov result1,4
 idiv result1
 dtoa result1,eax
 output res1,result
 output res2,result1
 
 mov eax,0
 ret
MainProc ENDP
END
