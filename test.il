.assembly extern mscorlib {}
.assembly Test
{
	.ver 1:0:1:0
}
.method public static void function1() cil managed
{
	.maxstack 128
	.locals init(string func1)
	ldstr "Quote: In function1`"
	stloc func1
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Printing a string variable, should be 'In function1'`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldloc func1
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ret
}
.method public static void function2() cil managed
{
	.maxstack 128
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: in function2`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	.locals init(int32 x)
	ldc.i4 7
	stloc x
	ldloc x
	ldc.i4 7
	mul
	ldc.i4 2
	ldc.i4 2
	ldc.i4 4
	sub
	div
	add
	stloc x
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing math operations, should be 48`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldloc x
	call void [mscorlib]System.Console::Write(int32)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ret
}
.class OuterClass
{
.method static void main() cil managed
{
	.maxstack 128
	.entrypoint
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Calling function 1`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	 call void function1()
	ldstr "Quote: Printing a float, should be 2.8`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.r4 2.8
	call void [mscorlib]System.Console::Write(float32)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Calling function 2 and then function 1`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	 call void function2()
	 call void function1()
	ldstr "Quote: --------------------------------------`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing general if's alongside equality operations`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing equality operator, 3 == 3, should print a statement saying so`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 3
	ldc.i4 3
	beq L0
	ldc.i4 0
	br L1
L0:
	ldc.i4 1
L1:
	ldc.i4 0
	beq L2
	ldstr "Quote: Made it into equality test 3 == 3`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L2:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing > operator, 4 > 3, should print a statement saying so`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 4
	ldc.i4 3
	bgt L3
	ldc.i4 0
	br L4
L3:
	ldc.i4 1
L4:
	ldc.i4 0
	beq L5
	ldstr "Quote: Made it into 4 > 3 test`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L5:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing >= operator, 3 >= 3 and 4 >= 3, should print a statement saying so`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 4
	ldc.i4 3
	bge L6
	ldc.i4 0
	br L7
L6:
	ldc.i4 1
L7:
	ldc.i4 0
	beq L8
	ldstr "Quote: Made it into 4 >= 3 test`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L8:
	ldc.i4 3
	ldc.i4 3
	bge L9
	ldc.i4 0
	br L10
L9:
	ldc.i4 1
L10:
	ldc.i4 0
	beq L11
	ldstr "Quote: Made it into 3 >= 3 test`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L11:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing < operator, 2 < 3, should print a statement saying so`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 2
	ldc.i4 3
	blt L12
	ldc.i4 0
	br L13
L12:
	ldc.i4 1
L13:
	ldc.i4 0
	beq L14
	ldstr "Quote: Made it into 2 < 3 test`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L14:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing <= operator, 3 <= 3 and 2 <= 3, should print a statement saying so`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 3
	ldc.i4 3
	ble L15
	ldc.i4 0
	br L16
L15:
	ldc.i4 1
L16:
	ldc.i4 0
	beq L17
	ldstr "Quote: Made it into 3 <= 3 test`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L17:
	ldc.i4 2
	ldc.i4 3
	ble L18
	ldc.i4 0
	br L19
L18:
	ldc.i4 1
L19:
	ldc.i4 0
	beq L20
	ldstr "Quote: Made it into 2 <= 3 test`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L20:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing != operator, 4 != 3, should print a statement saying so`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 4
	ldc.i4 3
	beq L21
	ldc.i4 0
	br L22
L21:
	ldc.i4 1
L22:
	not
	ldc.i4 0
	beq L23
	ldstr "Quote: Made it into 4 != 3 test`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L23:
	ldstr "Quote: ----------------------------------------------------`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing If-Else statements`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: testing an if-else inside an if statement`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 1
	ldc.i4 1
	beq L24
	ldc.i4 0
	br L25
L24:
	ldc.i4 1
L25:
	ldc.i4 0
	beq L26
	ldstr "Quote: 1 == 1, inside first if`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 1
	ldc.i4 2
	beq L27
	ldc.i4 0
	br L28
L27:
	ldc.i4 1
L28:
	ldc.i4 0
	beq L29
	ldstr "Quote: 1 == 2, uh oh I shouldn't be here.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	br L30
L29:
	ldstr "Quote: 1 != 2, this is the else statement to if 1 == 2, I should be here`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L30:
L26:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing General If-Else, should go to else`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 69
	ldc.i4 420
	bgt L31
	ldc.i4 0
	br L32
L31:
	ldc.i4 1
L32:
	ldc.i4 0
	beq L33
	ldstr "Quote: Shouldn't be here, because 69 !> 420`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	br L34
L33:
	ldstr "Quote: Correctly entered the else statement for 69 > 420`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L34:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing if{if{..}} else, should go in both ifs`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 666
	ldc.i4 666
	beq L35
	ldc.i4 0
	br L36
L35:
	ldc.i4 1
L36:
	ldc.i4 0
	beq L37
	ldstr "Quote: Made it in the first if.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 555
	ldc.i4 555
	beq L38
	ldc.i4 0
	br L39
L38:
	ldc.i4 1
L39:
	ldc.i4 0
	beq L40
	ldstr "Quote: Made it in the second if.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L40:
	br L41
L37:
	ldstr "Quote: Did not make it in either if, uh oh.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L41:
	ldstr "Quote: ----------------------------------------------------`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing while loops`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing while loop for x = 0 to x < 3`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	.locals init(int32 x)
	ldc.i4 0
	stloc x
L43:
	ldloc x
	ldc.i4 3
	blt L44
	ldc.i4 0
	br L45
L44:
	ldc.i4 1
L45:
	ldc.i4 0
	beq L42
	ldstr "Quote: x is `"
	call void [mscorlib]System.Console::Write(string)
	ldloc x
	call void [mscorlib]System.Console::Write(int32)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldloc x
	ldc.i4 1
	add
	stloc x
	br L43
L42:
	ldstr "Quote: Exited while loop.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing if-else inside a while loop.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 0
	stloc x
	ldstr "Quote: Entering while loop - x <= 2`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L47:
	ldloc x
	ldc.i4 2
	ble L48
	ldc.i4 0
	br L49
L48:
	ldc.i4 1
L49:
	ldc.i4 0
	beq L46
	ldstr "Quote: x is `"
	call void [mscorlib]System.Console::Write(string)
	ldloc x
	call void [mscorlib]System.Console::Write(int32)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldloc x
	ldc.i4 1
	bgt L50
	ldc.i4 0
	br L51
L50:
	ldc.i4 1
L51:
	ldc.i4 0
	beq L52
	ldstr "Quote: Entered if statement if x > 1`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	br L53
L52:
	ldstr "Quote: Entered else statement - x <= 1`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L53:
	ldloc x
	ldc.i4 1
	add
	stloc x
	br L47
L46:
	ldstr "Quote: Exited while loop.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing while loops inside an if statement.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 5
	stloc x
	.locals init(int32 y)
	ldc.i4 0
	stloc y
	ldstr "Quote: Entering if statement - if y (0) < x (5).`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldloc y
	ldloc x
	blt L54
	ldc.i4 0
	br L55
L54:
	ldc.i4 1
L55:
	ldc.i4 0
	beq L56
	ldstr "Quote: Entered if statement, entering while statement to increment y up to x.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L58:
	ldloc y
	ldloc x
	blt L59
	ldc.i4 0
	br L60
L59:
	ldc.i4 1
L60:
	ldc.i4 0
	beq L57
	ldstr "Quote: y is currently `"
	call void [mscorlib]System.Console::Write(string)
	ldloc y
	call void [mscorlib]System.Console::Write(int32)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldloc y
	ldc.i4 1
	add
	stloc y
	br L58
L57:
	ldstr "Quote: Exited while loop, checking y value - `"
	call void [mscorlib]System.Console::Write(string)
	ldloc y
	call void [mscorlib]System.Console::Write(int32)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Checking x value - `"
	call void [mscorlib]System.Console::Write(string)
	ldloc x
	call void [mscorlib]System.Console::Write(int32)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L56:
	ldstr "Quote: exited if statement.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: ----------------------------------------------------`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing ands, ors, and nots`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing true and - if 5 == 5 and 1 < 2. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 5
	ldc.i4 5
	beq L61
	ldc.i4 0
	br L62
L61:
	ldc.i4 1
L62:
	ldc.i4 1
	ldc.i4 2
	blt L63
	ldc.i4 0
	br L64
L63:
	ldc.i4 1
L64:
	and
	ldc.i4 0
	beq L65
	ldstr "Quote: properly entered if statement. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	br L66
L65:
	ldstr "Quote: Incorrectly entered else statement.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L66:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing false left side and - if 5 == 4 and 1 < 2. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 5
	ldc.i4 4
	beq L67
	ldc.i4 0
	br L68
L67:
	ldc.i4 1
L68:
	ldc.i4 1
	ldc.i4 2
	blt L69
	ldc.i4 0
	br L70
L69:
	ldc.i4 1
L70:
	and
	ldc.i4 0
	beq L71
	ldstr "Quote: improperly entered if statement. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	br L72
L71:
	ldstr "Quote: Correctly entered else statement.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L72:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing false right side and - if 5 == 5 and 7 < 2. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 5
	ldc.i4 5
	beq L73
	ldc.i4 0
	br L74
L73:
	ldc.i4 1
L74:
	ldc.i4 7
	ldc.i4 2
	blt L75
	ldc.i4 0
	br L76
L75:
	ldc.i4 1
L76:
	and
	ldc.i4 0
	beq L77
	ldstr "Quote: improperly entered if statement. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	br L78
L77:
	ldstr "Quote: Correctly entered else statement.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L78:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing false both sides and - if 7 == 5 and 7 < 2. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 7
	ldc.i4 5
	beq L79
	ldc.i4 0
	br L80
L79:
	ldc.i4 1
L80:
	ldc.i4 7
	ldc.i4 2
	blt L81
	ldc.i4 0
	br L82
L81:
	ldc.i4 1
L82:
	and
	ldc.i4 0
	beq L83
	ldstr "Quote: improperly entered if statement. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	br L84
L83:
	ldstr "Quote: Correctly entered else statement.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L84:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing true not and - if not(6 == 5) and 1 < 2. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 6
	ldc.i4 5
	beq L85
	ldc.i4 0
	br L86
L85:
	ldc.i4 1
L86:
	not
	ldc.i4 1
	ldc.i4 2
	blt L87
	ldc.i4 0
	br L88
L87:
	ldc.i4 1
L88:
	and
	ldc.i4 0
	beq L89
	ldstr "Quote: properly entered if statement. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	br L90
L89:
	ldstr "Quote: Incorrectly entered else statement.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L90:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing false not and - if not(5 == 5) and 1 < 2. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 5
	ldc.i4 5
	beq L91
	ldc.i4 0
	br L92
L91:
	ldc.i4 1
L92:
	not
	ldc.i4 1
	ldc.i4 2
	blt L93
	ldc.i4 0
	br L94
L93:
	ldc.i4 1
L94:
	and
	ldc.i4 0
	beq L95
	ldstr "Quote: improperly entered if statement. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	br L96
L95:
	ldstr "Quote: correctly entered else statement.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L96:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing true or - if 5 == 5 or 1 < 2. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 5
	ldc.i4 5
	beq L97
	ldc.i4 0
	br L98
L97:
	ldc.i4 1
L98:
	ldc.i4 1
	ldc.i4 2
	blt L99
	ldc.i4 0
	br L100
L99:
	ldc.i4 1
L100:
	or
	ldc.i4 0
	beq L101
	ldstr "Quote: properly entered if statement. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	br L102
L101:
	ldstr "Quote: incorrectly entered else statement.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L102:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing true or - if 6 == 5 or 1 < 2. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 6
	ldc.i4 5
	beq L103
	ldc.i4 0
	br L104
L103:
	ldc.i4 1
L104:
	ldc.i4 1
	ldc.i4 2
	blt L105
	ldc.i4 0
	br L106
L105:
	ldc.i4 1
L106:
	or
	ldc.i4 0
	beq L107
	ldstr "Quote: properly entered if statement. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	br L108
L107:
	ldstr "Quote: incorrectly entered else statement.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L108:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing true or - if 5 == 5 or 6 < 2. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 5
	ldc.i4 5
	beq L109
	ldc.i4 0
	br L110
L109:
	ldc.i4 1
L110:
	ldc.i4 6
	ldc.i4 2
	blt L111
	ldc.i4 0
	br L112
L111:
	ldc.i4 1
L112:
	or
	ldc.i4 0
	beq L113
	ldstr "Quote: properly entered if statement. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	br L114
L113:
	ldstr "Quote: incorrectly entered else statement.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L114:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing false or - if 7 == 5 or 7 < 2. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 7
	ldc.i4 5
	beq L115
	ldc.i4 0
	br L116
L115:
	ldc.i4 1
L116:
	ldc.i4 7
	ldc.i4 2
	blt L117
	ldc.i4 0
	br L118
L117:
	ldc.i4 1
L118:
	or
	ldc.i4 0
	beq L119
	ldstr "Quote: improperly entered if statement. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	br L120
L119:
	ldstr "Quote: correctly entered else statement.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L120:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing true not or - if not(7 == 5 or 7 < 2). `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 7
	ldc.i4 5
	beq L121
	ldc.i4 0
	br L122
L121:
	ldc.i4 1
L122:
	ldc.i4 7
	ldc.i4 2
	blt L123
	ldc.i4 0
	br L124
L123:
	ldc.i4 1
L124:
	or
	not
	ldc.i4 0
	beq L125
	ldstr "Quote: properly entered if statement. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	br L126
L125:
	ldstr "Quote: incorrectly entered else statement.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L126:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldstr "Quote: Testing false not or - if not(5 == 5) or 7 < 2. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ldc.i4 6
	ldc.i4 5
	bgt L127
	ldc.i4 0
	br L128
L127:
	ldc.i4 1
L128:
	ldc.i4 1
	ldc.i4 2
	blt L129
	ldc.i4 0
	br L130
L129:
	ldc.i4 1
L130:
	or
	not
	ldc.i4 0
	beq L131
	ldstr "Quote: improperly entered if statement. `"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	br L132
L131:
	ldstr "Quote: correctly entered else statement.`"
	call void [mscorlib]System.Console::Write(string)
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
L132:
	ldstr "\n"
	call void [mscorlib]System.Console::Write(string)
	ret
}
}
