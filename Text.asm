.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
prompt1 BYTE "Enter the first number ",0
prompt2 BYTE "Enter the second number ",0
prompt3 BYTE "Enter the third number ",0
result BYTE "The Value is",0
inp BYTE 40 DUP(?)
res BYTE 11 DUP(?),0
num1 dword ?
.CODE
  MainProc Proc
    input prompt1,inp,40
	atod inp
	mov num1,eax
	input prompt2,inp,40
	atod inp
	add num1,eax
	mov eax,2
	mul num1
	mov num1,eax
	input prompt3,inp,40
	atod inp
	add num1,eax
	mov eax,num1
	dtoa res,eax
	output result,res
	mov eax,0
	ret
  MainProc ENDP
END