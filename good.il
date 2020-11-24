.assembly extern mscorlib {}
.assembly Test
{
	.ver 1:0:1:0
}
	ldc.i4 7
	ldc.r4 5.6e2
	ldc.i4 3
	neg
	ldc.i4 4
	ldc.i4 2
	neg
	sub
	.locals init(int32 y)
	.locals init(int32 b)
	ldloc X
	ldc.i4 2
	add
	stloc y
	ldloc y
	ldloc X
	bgt L0
	ldc.i4 0
	br L1
L0:
	ldc.i4 1
L1:
	ldc.i4 0
	beq L2
L4:
	ldloc y
	ldloc test
	beq L5
	ldc.i4 0
	br L6
L5:
	ldc.i4 1
L6:
	not
	ldc.i4 0
	beq L3
	ldloc y
	ldc.i4 1
	sub
	stloc y
	br L4
L3:
L2:
	.locals init(float32 hello)
	.locals init(float32 nothing)
	ldc.r4 4.0
	stloc hello
	ldc.r4 3.0
	stloc nothing
	.locals init(float32 x)
	ldc.r4 0.0
	stloc x
L8:
	ldloc nothing
	ldloc hello
	ble L9
	ldc.i4 0
	br L10
L9:
	ldc.i4 1
L10:
	ldc.i4 0
	beq L7
	ldc.r4 2.0
	stloc x
	ldloc hello
	ldloc x
	bge L11
	ldc.i4 0
	br L12
L11:
	ldc.i4 1
L12:
	ldc.i4 0
	beq L13
	ldloc hello
	stloc nothing
L13:
	br L8
L7:
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
	.locals init(bool32 goodBool)
	.locals init(float32 floatyboi)
	ldc.i4 2
	stloc z
	ldloc z
	stloc x
	ldc.i4 0
	stloc y
	ldloc NEG
	stloc paren
	ldc.i4 1
	ldc.i4 2
	blt L14
	ldc.i4 0
	br L15
L14:
	ldc.i4 1
L15:
	not
	stloc goodBool
	ldc.r4 6.9
	stloc floatyboi
	ldloc z
	 call void goodEmpty()
	ldloc goodString
	ldloc z
	ldc.i4 2
	beq L16
	ldc.i4 0
	br L17
L16:
	ldc.i4 1
L17:
	ldc.i4 0
	beq L18
	ldloc z
	ldc.i4 1
	add
	stloc z
	br L19
L18:
	ldloc z
	ldc.i4 2
	sub
	stloc z
L19:
L21:
	ldloc z
	ldloc x
	beq L22
	ldc.i4 0
	br L23
L22:
	ldc.i4 1
L23:
	ldloc z
	ldloc x
	bgt L24
	ldc.i4 0
	br L25
L24:
	ldc.i4 1
L25:
	not
	or
	ldc.i4 0
	beq L20
	ldloc z
	ldloc x
	beq L26
	ldc.i4 0
	br L27
L26:
	ldc.i4 1
L27:
	ldc.i4 0
	beq L28
	ldloc x
	ldc.i4 1
	add
	stloc z
	br L29
L28:
	ldloc z
	ldc.i4 2
	mul
	stloc x
L29:
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
	br L21
L20:
	ldc.i4 1
	ldc.i4 2
	blt L30
	ldc.i4 0
	br L31
L30:
	ldc.i4 1
L31:
	ldc.i4 0
	beq L32
	ldloc z
	ldc.i4 1
	add
	stloc z
L32:
	ldc.i4 3
	ldc.i4 0
	bgt L33
	ldc.i4 0
	br L34
L33:
	ldc.i4 1
L34:
	ldc.i4 0
	beq L35
	ldc.i4 2
	ldc.i4 2
	beq L36
	ldc.i4 0
	br L37
L36:
	ldc.i4 1
L37:
	ldc.i4 0
	beq L38
	.locals init(string happy)
L38:
L35:
L40:
	ldc.i4 1
	ldc.i4 1
	bge L41
	ldc.i4 0
	br L42
L41:
	ldc.i4 1
L42:
	ldc.i4 0
	beq L39
	ldc.i4 2
	ldc.i4 7
	ble L43
	ldc.i4 0
	br L44
L43:
	ldc.i4 1
L44:
	ldc.i4 0
	beq L45
	.locals init(string sad)
L45:
	br L40
L39:
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
