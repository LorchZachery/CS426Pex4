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
	br L1
L3:
	ldc.i4 1
	br L0
L0:
	ldc.i4 0
	beq L2
	ldc.i4 5
	call void [mscorlib]System.Console::Write(int32)
	br L2
L1:
here1
	ldc.i4 2
	ldc.i4 3
	blt L4
here2
	ldc.i4 10
	ldc.i4 3
	blt L4
here3
	ldc.i4 0
	br L0
L2:
	ret
}
}
