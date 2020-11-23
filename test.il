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
	br L2
L4:
	ldc.i4 1
	br L1
L1:
	ldc.i4 0
	beq L3
	ldstr "Quote: in if outside`"
	call void [mscorlib]System.Console::Write(string)
	br L7
L9:
	ldc.i4 1
	br L6
L6:
	ldc.i4 0
	beq L8
	ldstr "Quote: in if inside`"
	call void [mscorlib]System.Console::Write(string)
	br L5
L7:
	ldc.i4 10
	ldc.i4 10
	blt L9
	ldc.i4 0
	br L6
L8:
	ldstr "Quote: HELL`"
	call void [mscorlib]System.Console::Write(string)
L5:
	br L11
L13:
	ldc.i4 1
	br L10
L10:
	ldc.i4 0
	beq L12
	ldstr "Quote: f this`"
	call void [mscorlib]System.Console::Write(string)
	br L12
L11:
	ldc.i4 22
	ldc.i4 20
	blt L13
	ldc.i4 0
	br L10
L12:
	br L0
L2:
	ldc.i4 5
	ldc.i4 10
	blt L4
	ldc.i4 0
	br L1
L3:
	ldstr "Quote: in else`"
	call void [mscorlib]System.Console::Write(string)
L0:
	ldstr "Quote: made it out`"
	call void [mscorlib]System.Console::Write(string)
	ret
}
}
