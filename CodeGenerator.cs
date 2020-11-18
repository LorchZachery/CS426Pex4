﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using CS426.node;

namespace CS426.analysis
{
    class CodeGenerator : DepthFirstAdapter
    {
        StreamWriter _output;
        //TextWriter _output;
        public CodeGenerator(StreamWriter fileio)
        {
            _output = fileio;
        }

        //starting the assemble file
        //.assembly extern mscorlib {}
        //.assembly Add
        //{
        //  .ver 1:0:1:0
        //}
        //.class OuterClass
        //.method static void main() cil managed
        public override void InAProgram(AProgram node)
        {
            _output.WriteLine(".assembly extern mscorlib {}");
            _output.WriteLine(".assembly Test");
            _output.WriteLine("{");
            _output.WriteLine("\t.ver 1:0:1:0");
            _output.WriteLine("}");
            _output.WriteLine(".class OuterClass");
            _output.WriteLine("{");
            _output.WriteLine(".method static void main() cil managed");
            _output.WriteLine("{");
            _output.WriteLine("\t.maxstack 128");
            _output.WriteLine("\t.entrypoint");
        }

        //ending the assemble file
        //  ret
        //}
        public override void OutAProgram(AProgram node)
        {
            _output.WriteLine("\tret");
            _output.WriteLine("}");
            _output.WriteLine("}");
            _output.Close();
        }

        //int x end
        //float x end
        //string x end
        // i believe this will work for both int and float not sure yet
        public override void OutADeclarationCode(ADeclarationCode node)
        {
            
            if (node.GetType().Text == "string")
            {
                _output.Write("\t.locals init(");
                _output.WriteLine(node.GetType().Text + " " + node.GetVar().Text + ")");
            }
            else
            {
                _output.Write("\t.locals init(");
                _output.WriteLine(node.GetType().Text + "32 " + node.GetVar().Text + ")");
            }
        }

       

        //x equals 3 end
        public override void OutAIntOperand(AIntOperand node)
        {
            _output.WriteLine("\tldc.i4 " + node.GetInt().Text);
        }

        // x equals 3e10 end
        public override void OutAFloatOperand(AFloatOperand node)
        {
            _output.WriteLine("\tldc.r4 " + node.GetFloat().Text);
        }

        //x equals y end
        public override void OutAVarOperand(AVarOperand node)
        {
            _output.WriteLine("\tldloc " + node.GetId().Text);
        }

        //x equals Quote: hello` end
        public override void OutAStrAssignmentCode(AStrAssignmentCode node)
        {
            _output.WriteLine("\tldstr " + "\"" + node.GetString().Text + "\"");
            _output.WriteLine("\tstloc " + node.GetId().Text);
        }
        

        // x equals 3 end
        //not sure why grahma double up onthis with different functions
        
        public override void OutAExprAssignmentCode(AExprAssignmentCode node)
        {
            _output.WriteLine("\tstloc " + node.GetId().Text);
        }

        //adding literal for string param
        public override void OutAStringArgs(AStringArgs node)
        {
           _output.WriteLine("\t ldstr " + "\"" +  node.GetString().Text + "\"" );
        }

        // PrintInt(9) end PrintFloat(3.4) end  Print("hello world") end NewLine() emd
        public override void OutAParamsFunctionCall(AParamsFunctionCall node)
        {
            if (node.GetId().Text.Equals("PrintInt"))
            {
                _output.WriteLine("\tcall void [mscorlib]System.Console::Write(int32)");
            }
            else if (node.GetId().Text.Equals("PrintFloat"))
            {
                _output.WriteLine("\tcall void [mscorlib]System.Console::Write(float32)");
            }
            else if (node.GetId().Text.Equals("Print"))
            {
                
                
                _output.WriteLine("\tcall void [mscorlib]System.Console::Write(string)");
            }
            else
            {
                //other functions
            }
        }
        public override void OutANoParamsFunctionCall(ANoParamsFunctionCall node)
        {
          
           if (node.GetId().Text.Equals("NewLine"))
            {
                _output.WriteLine("\tldstr \"\\n\"");
                _output.WriteLine("\tcall void [mscorlib]System.Console::Write(string)");
            }
            else
            {
                //other functs
            }
        }

        // x plus 5   ------   ldloc x
        //                  ldc.i4 5
        //                  add
        //      
        public override void OutAAddAddSub(AAddAddSub node)
        {
            _output.WriteLine("\tadd");
        }

        // x minus 5 ----- ldloc x
        //             ldc.i4 5
        //             sub 
        public override void OutASubtAddSub(ASubtAddSub node)
        {
            _output.WriteLine("\tsub");
        }


        // x times 5 ------ ldloc x
        //              ldc.i4 5
        //              mut
        public override void OutAMultMultDiv(AMultMultDiv node)
        {
            _output.WriteLine("\tmul");
        }

        //x divide 5 -------ldloc x
        //                  ldc.i4 5
        //                  div
        public override void OutADivMultDiv(ADivMultDiv node)
        {
            _output.WriteLine("\tdiv");
        }
    }
}
/*
 * // int x;  ---->  .locals init (int32, x)
        public override void OutADeclarestmt(ADeclarestmt node)
        {
            _output.Write("\t.locals init(");
            _output.WriteLine(node.GetTypename().Text + "32 " + node.GetVarname().Text + ")");

        }


        //.assembly extern mscorlib {}
        //.assembly Add
        //{
        //  .ver 1:0:1:0
        //}
        //.class OuterClass
        //.method static void main() cil managed
        public override void InAProg(AProg node)
        {
            _output.WriteLine(".assembly extern mscorlib {}");
            _output.WriteLine(".assembly Test");
            _output.WriteLine("{");
            _output.WriteLine("\t.ver 1:0:1:0");
            _output.WriteLine("}");
            _output.WriteLine(".class OuterClass");
            _output.WriteLine("{");
            _output.WriteLine(".method static void main() cil managed");
            _output.WriteLine("{");
            _output.WriteLine("\t.maxstack 128");
            _output.WriteLine("\t.entrypoint");
        }

        //  ret
        //}
        public override void OutAProg(AProg node)
        {
            _output.WriteLine("\tret");
            _output.WriteLine("}\n");
            _output.WriteLine("}\n");
            _output.Close();
        }

        // x = 34; -----> ldc.i4 34
        public override void OutAIntOperand(AIntOperand node)
        {
            _output.WriteLine("\tldc.i4 " + node.GetInteger().Text);
        }

        public override void OutAVariableOperand(AVariableOperand node)
        {
            _output.WriteLine("\tldloc " + node.GetId().Text);
        }

        public override void OutAStringOperand(AStringOperand node)
        {
            _output.WriteLine("\tldstr " + node.GetString().Text);
        }

        // x : = 5;
        public override void OutAAssignstmt(AAssignstmt node)
        {
            _output.WriteLine("\tstloc " + node.GetId().Text);
        }

        // PrintInt(9); PrintFloat(3.4); Print("hello world"); NewLine();
        public override void OutAFunctioncall(AFunctioncall node)
        {
            if(node.GetId().Text.Equals("PrintInt"))
            {
                _output.WriteLine("\tcall void [mscorlib]System.Console::Write(int32)");
            }
            else if(node.GetId().Text.Equals("PrintFloat"))
            {
                _output.WriteLine("\tcall void [mscorlib]System.Console::Write(float32)");
            }
            else if (node.GetId().Text.Equals("Print"))
            {
                _output.WriteLine("\tcall void [mscorlib]System.Console::Write(string)");
            }
            else if (node.GetId().Text.Equals("NewLine"))
            {
                _output.WriteLine("\tldstr \"\\n\"");
                _output.WriteLine("\tcall void [mscorlib]System.Console::Write(string)");
            }
            else
            {

            }

        }

        // x + 5   ------   ldloc x
        //                  ldc.i4 5
        //                  add
        //      
        public override void OutAPlusExpr(APlusExpr node)
        {
            _output.WriteLine("\tadd");
        }

        public override void OutAMultExpr2(AMultExpr2 node)
        {
            _output.WriteLine("\tmul");
        }
 * 
 */