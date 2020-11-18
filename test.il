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
	.locals init(int32 w)
	ldc.i4 1
	not
	stloc w
	ldloc w
	call void [mscorlib]System.Console::Write(int32)
	ret
}
}
