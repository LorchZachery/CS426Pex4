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
	ldc.i4 5
	stloc x
	ldc.i4 2001
	call void [mscorlib]System.Console::Write(int32)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "helloworld"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldloc x
	call void [mscorlib]System.Console::Write(int32)
	ldloc x
	ldc.i4 5
	add
	stloc x
	ldc.i4 5
	ldc.i4 6
	mul
	stloc x
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldloc x
	call void [mscorlib]System.Console::Write(int32)
	ret
}

}

