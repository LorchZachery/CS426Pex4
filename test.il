.assembly extern mscorlib {}
.assembly Test
{
	.ver 1:0:1:0
}
.method public static void function1() cil managed
{
	.maxstack 128
	ldc.i4 1
	call void [mscorlib]System.Console::Write(int32)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ret
}
.method public static void function2() cil managed
{
	.maxstack 128
	ldc.i4 3
	call void [mscorlib]System.Console::Write(int32)
	ret
}
.class OuterClass
{
.method static void main() cil managed
{
	.maxstack 128
	.entrypoint
	ldc.i4 0
	call void [mscorlib]System.Console::Write(int32)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	 call void function1()
	ldc.i4 2
	call void [mscorlib]System.Console::Write(int32)
	 call void function2()
	 call void function1()
	ret
}
}
