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
	ldc.i4 5
	ldc.i4 10
	blt L3
	ldc.i4 0
	br L2
L3:
	ldc.i4 1
L2:
	ldc.i4 0
	beq L1
	 ldstr "Quote: in if outside`"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 5
	ldc.i4 10
	blt L6
	ldc.i4 0
	br L5
L6:
	ldc.i4 1
L5:
	ldc.i4 0
	beq L4
	 ldstr "Quote: in if inside`"
	call void [mscorlib]System.Console::Write(string)
	br L4
L4:
	 ldstr "Quote: made it out`"
	call void [mscorlib]System.Console::Write(string)
	ret
}
}
