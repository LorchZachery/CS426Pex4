using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using ToyLanguage.node;

namespace ToyLanguage.analysis
{
    class CodeGenerator : DepthFirstAdapter
    {
        StreamWriter _output;

        public CodeGenerator(StreamWriter fileio)
        {
            _output = fileio;
        }

        // int x;  ---->  .locals init (int32, x)
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
    }
}
