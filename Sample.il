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
	.locals init(int32 x)
	.locals init(float32 bar)
	.locals init(float32 b)
	ldc.r4 5.44
	stloc b
	.locals init(string testing)
	ldstr "hello world"
	stloc testing
	ldstr "main subprocedure"
	call void [mscorlib]System.Console::Write (string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write (string)
	ldloc testing
	call void [mscorlib]System.Console::Write (string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write (string)
	ldc.i4 100
	stloc x
L1:
	ldloc x
	ldc.i4 90
	bgt L2
	ldc.i4 0
	br L3
L2:
	ldc.i4 1
L3:
	ldc.i4 0
	beq L0
	ldloc x
	ldc.i4 1
	sub
	stloc x
	br L1
L0:
	ldloc x
	ldc.i4 90
	beq L6
	ldc.i4 0
	br L7
L6:
	ldc.i4 1
L7:
	ldc.i4 0
	beq L4
	ldloc x
	call void [mscorlib]System.Console::WriteLine(int32)
	ldloc b
	call void [mscorlib]System.Console::WriteLine(float32)
	br L5
L4:
	ldc.i4 10
	stloc x
L5:
	ldc.i4 10
	ldc.i4 4
	mul
	ldc.i4 2
	div
	stloc x
	ldstr "x should be 20: "
	call void [mscorlib]System.Console::Write (string)
	ldloc x
	call void [mscorlib]System.Console::WriteLine(int32)
	ldstr "\n"
	call void [mscorlib]System.Console::Write (string)
	ldc.r4 567.12
	stloc bar
	ldloc b
	call void [mscorlib]System.Console::WriteLine(float32)
	ret
}
}
