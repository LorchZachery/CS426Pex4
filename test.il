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
	.locals init(int32 z)
	ldc.i4 3
	stloc z
	.locals init(float32 x)
	ldc.r4 5.6e2
	stloc x
	.locals init(float32 y)
	ldloc x
	stloc y
	.locals init(int32 addtion)
	ldc.i4 3
	ldloc z
	add
	stloc addtion
	ldloc addtion
	call void [mscorlib]System.Console::Write(int32)
	.locals init(int32 subtraction)
	ldc.i4 4
	ldloc z
	sub
	stloc subtraction
	ldloc subtraction
	call void [mscorlib]System.Console::Write(int32)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	.locals init(int32 multiplicaiton)
	ldc.i4 4
	ldloc z
	mul
	stloc multiplicaiton
	ldloc multiplicaiton
	call void [mscorlib]System.Console::Write(int32)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	.locals init(int32 dividsion)
	ldc.i4 9
	ldloc z
	div
	stloc dividsion
	ldloc dividsion
	call void [mscorlib]System.Console::Write(int32)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ret
}
}
