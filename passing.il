.assembly extern mscorlib {}
.assembly Test
{
	.ver 1:0:1:0
}
.method public static void function3() cil managed
{
	.maxstack 128
	.locals init(int32 great)
	ldc.i4 2
	stloc great
	.locals init(string test)
	ldstr "Quote: test`"
	stloc test
	ret
}
.method public static void goodEmpty() cil managed
{
	.maxstack 128
	.locals init(int32 temp1)
	ret
}
.class OuterClass
{
.method static void main() cil managed
{
	.maxstack 128
	.entrypoint
	.locals init(string workplz)
	ldstr "Quote: hopefully`"
	stloc workplz
	.locals init(int32 z)
	.locals init(int32 x)
	.locals init(int32 y)
	.locals init(int32 paren)
	.locals init(string goodString)
	ldstr "Quote: good`"
	stloc goodString
	.locals init(float32 floatyboi)
	ldc.i4 2
	stloc z
	ldloc z
	stloc x
	ldc.i4 0
	stloc y
	ldc.i4 2
	stloc paren
	ldc.r4 6.9
	stloc floatyboi
	 call void goodEmpty()
	ldloc z
	ldc.i4 2
	beq L0
	ldc.i4 0
	br L1
L0:
	ldc.i4 1
L1:
	ldc.i4 0
	beq L2
	ldloc z
	ldc.i4 1
	add
	stloc z
	br L3
L2:
	ldloc z
	ldc.i4 2
	sub
	stloc z
L3:
L5:
	ldloc z
	ldloc x
	beq L6
	ldc.i4 0
	br L7
L6:
	ldc.i4 1
L7:
	ldloc z
	ldloc x
	bgt L8
	ldc.i4 0
	br L9
L8:
	ldc.i4 1
L9:
	not
	or
	ldc.i4 0
	beq L4
	ldloc z
	ldloc x
	beq L10
	ldc.i4 0
	br L11
L10:
	ldc.i4 1
L11:
	ldc.i4 0
	beq L12
	ldloc x
	ldc.i4 1
	add
	stloc z
	br L13
L12:
	ldloc z
	ldc.i4 2
	mul
	stloc x
L13:
	ldc.i4 7
	ldc.i4 3
	ldc.i4 2
	mul
	add
	ldc.i4 10
	ldc.i4 5
	div
	sub
	stloc y
	ldloc y
	ldc.i4 4
	add
	ldc.i4 2
	ldc.i4 4
	ldc.i4 3
	sub
	mul
	div
	stloc paren
	br L5
L4:
	ldc.i4 1
	ldc.i4 2
	blt L14
	ldc.i4 0
	br L15
L14:
	ldc.i4 1
L15:
	ldc.i4 0
	beq L16
	ldloc z
	ldc.i4 1
	add
	stloc z
L16:
	ldc.i4 3
	ldc.i4 0
	bgt L17
	ldc.i4 0
	br L18
L17:
	ldc.i4 1
L18:
	ldc.i4 0
	beq L19
	ldc.i4 2
	ldc.i4 2
	beq L20
	ldc.i4 0
	br L21
L20:
	ldc.i4 1
L21:
	ldc.i4 0
	beq L22
	.locals init(string happy)
L22:
L19:
L24:
	ldc.i4 1
	ldc.i4 1
	bge L25
	ldc.i4 0
	br L26
L25:
	ldc.i4 1
L26:
	ldc.i4 0
	beq L23
	ldc.i4 2
	ldc.i4 7
	ble L27
	ldc.i4 0
	br L28
L27:
	ldc.i4 1
L28:
	ldc.i4 0
	beq L29
	.locals init(string sad)
L29:
	br L24
L23:
	 call void goodEmpty()
	.locals init(int32 math)
	ldc.i4 1
	ldloc z
	add
	stloc math
	ldc.i4 1
	ldloc z
	sub
	stloc math
	ldc.i4 1
	ldloc z
	div
	stloc math
	ldc.i4 1
	ldloc z
	mul
	stloc math
	ldc.i4 1
	ldloc z
	neg
	add
	stloc math
	.locals init(float32 mathF)
	ldc.r4 1.0
	ldloc floatyboi
	add
	stloc mathF
	ldc.r4 1.0
	ldloc floatyboi
	sub
	stloc mathF
	ldc.r4 1.0
	ldloc floatyboi
	div
	stloc mathF
	ldc.r4 1.0
	ldloc floatyboi
	mul
	stloc mathF
	ldc.r4 1.0
	neg
	ldloc floatyboi
	sub
	stloc mathF
	ret
}
}
