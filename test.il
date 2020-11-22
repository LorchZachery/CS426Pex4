.assembly extern mscorlib {}
.assembly Test
{
	.ver 1:0:1:0
}
.class OuterClass
{
.method static void main() cil managed
{
	.maxstack 128
	.entrypoint
L0:
	ldc.i4 5
	ldc.i4 10
	blt L1
	ldc.i4 0
	br L2
L1:
	ldc.i4 1
L2:
	ldc.i4 0
	beq L3
	ldstr "Quote: in if outside`"
	call void [mscorlib]System.Console::Write(string)
L4:
	ldc.i4 5
	ldc.i4 10
	blt L5
	ldc.i4 0
	br L6
L5:
	ldc.i4 1
L6:
	ldc.i4 0
	beq L7
	ldstr "Quote: in if inside`"
	call void [mscorlib]System.Console::Write(string)
	br L7
L8:
	ldstr "Quote: made it out`"
	call void [mscorlib]System.Console::Write(string)
	ret
}
}
