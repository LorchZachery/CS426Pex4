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
	ldc.i4 3
	ldc.i4 10
	blt L0
	ldc.i4 0
	br L1
L0:
	ldc.i4 1
L1:
	ldc.i4 3
	ldc.i4 10
	blt L2
	ldc.i4 0
	br L3
L2:
	ldc.i4 1
L3:
	and
	ldc.i4 0
	beq L4
	ldc.i4 1
	call void [mscorlib]System.Console::Write(int32)
	ldc.i4 3
	ldc.i4 10
	blt L5
	ldc.i4 0
	br L6
L5:
	ldc.i4 1
L6:
	ldc.i4 0
	beq L7
	ldc.i4 2
	call void [mscorlib]System.Console::Write(int32)
	br L8
L7:
	br L8
L4:
	ldc.i4 3
	call void [mscorlib]System.Console::Write(int32)
L8:
	ret
}
}
