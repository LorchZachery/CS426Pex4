using System;
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
        int labelCount = 0;
        int oldLabelCount = 0;
        bool inElse = false;
        int elseBreak = 0;
        bool outIfState = false;
        int saveLabel = -1;
        List<int> savedLabels = new List<int>();
        List<int> usedLs = new List<int>();
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

        //x equals -3 end
        public override void OutANegationUnaryExpr(ANegationUnaryExpr node)
        {
            _output.WriteLine("\tneg");
        }

        // x equals not 1 end THIS IS NOT A PROPER WAY IN OUR LANGUAGE TO USE NOT
        public override void OutANotUnaryExpr(ANotUnaryExpr node)
        {
            _output.WriteLine("\tnot");
        }

        //adding literal for string param
        public override void OutAStringArgs(AStringArgs node)
        {
           _output.WriteLine("\tldstr " + "\"" +  node.GetString().Text + "\"" );
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
        //                  divtatement node)
        public override void OutADivMultDiv(ADivMultDiv node)
        {
            _output.WriteLine("\tdiv");
        }

        public override void InAIfStatement(AIfStatement node)
        {
            if (!usedLs.Contains(labelCount) && labelCount != saveLabel)
            {
                _output.WriteLine("L" + labelCount + ":");
                usedLs.Add(labelCount);
                labelCount++;
            }
            else
            {
                labelCount++;
                _output.WriteLine("L" + labelCount + ":");
                usedLs.Add(labelCount);
                labelCount++;
            }



    //        _output.WriteLine("\tldc.i4 0");
      //      _output.WriteLine("\tbr L" + (labelCount - 1).ToString());
        //    _output.WriteLine("L" + labelCount.ToString() + ":");
          //  _output.WriteLine("\tldc.i4 1");
            //_output.WriteLine("L" + (labelCount - 1).ToString() + ":");
           // _output.WriteLine("\tldc.i4 0");
           // _output.WriteLine("\tbeq L" + saveCount.ToString());
        }


        public override void CaseAIfStatement(AIfStatement node)
        {
            bool toplevel = false;
            if (!outIfState)
            {
                outIfState = true;
                toplevel = true;
            }
            InAIfStatement(node);
            if (node.GetIf() != null)
            {
                node.GetIf().Apply(this);
            }
            if (node.GetLparen() != null)
            {
                node.GetLparen().Apply(this);
            }
            int saveCount = labelCount +1 ;
           // labelCount += 2;
            if (node.GetOrExpr() != null)
            {
                node.GetOrExpr().Apply(this);
            }
            if (node.GetRparen() != null)
            {
                node.GetRparen().Apply(this);
            }
            if (node.GetLbrace() != null)
            {
                node.GetLbrace().Apply(this);
            }
            if (!usedLs.Contains(labelCount))
            {
                _output.WriteLine("\tldc.i4 0");
                _output.WriteLine("\tbr L" + (labelCount).ToString());
                _output.WriteLine("L" + (labelCount - 1).ToString() + ":");
                _output.WriteLine("\tldc.i4 1");
                _output.WriteLine("L" + (labelCount).ToString() + ":");
                _output.WriteLine("\tldc.i4 0");
                usedLs.Add(labelCount);
                labelCount++;
                _output.WriteLine("\tbeq L" + (labelCount).ToString());
                saveLabel = labelCount;
                savedLabels.Add(saveLabel);
                //usedLs.Add(labelCount);
               // labelCount++;
            }
            else
            {
                labelCount++;
                _output.WriteLine("\tldc.i4 0");
                _output.WriteLine("\tbr L" + (labelCount).ToString());
                _output.WriteLine("L" + labelCount.ToString() + ":");
                _output.WriteLine("\tldc.i4 1");
                _output.WriteLine("L" + (labelCount).ToString() + ":");
                _output.WriteLine("\tldc.i4 0");
                _output.WriteLine("\tbeq L" + labelCount.ToString());
                //usedLs.Add(labelCount);
                //labelCount++;
            }
            

            if (node.GetStatements() != null)
            {
                node.GetStatements().Apply(this);
            }
            if (!toplevel)
            {
                if(!usedLs.Contains(labelCount))
                {
                    // _output.WriteLine("\tbr L" + saveCount.ToString());
                    _output.WriteLine("\tbr L" + labelCount.ToString());
                    usedLs.Add(labelCount);
                    labelCount++;
                }
                else
                {
                    labelCount++;
                    // _output.WriteLine("\tbr L" + saveCount.ToString());
                    _output.WriteLine("\tbr L" + labelCount.ToString());
                    usedLs.Add(labelCount);
                    labelCount++;
                }
                
            }
           if (inElse && toplevel)
           {
                if (!usedLs.Contains(labelCount))
                {
                    // _output.WriteLine("\tbr L" + saveCount.ToString());
                    _output.WriteLine("L" + labelCount.ToString() + ":");
                    usedLs.Add(labelCount);
                    labelCount++;
                }
                else
                {
                    labelCount++;
                    // _output.WriteLine("\tbr L" + saveCount.ToString());
                    _output.WriteLine("L" + labelCount.ToString() + ":");
                    usedLs.Add(labelCount);
                    labelCount++;
                }
          
            }
           else if (toplevel)
            {
                if (!usedLs.Contains(labelCount))
                {
                    _output.WriteLine("L" + (labelCount).ToString() + ":"); //savedLabels

                    usedLs.Add(labelCount);
                    labelCount++;
                }
                else
                {
                    labelCount++;
                    _output.WriteLine("L" + (labelCount).ToString() + ":");
                    usedLs.Add(labelCount);
                    labelCount++;
                }
                
            }
           
            if (node.GetRbrace() != null)
            {
                node.GetRbrace().Apply(this);
            }

            
            OutAIfStatement(node);
        }

        

        public override void CaseAElseStatement(AElseStatement node)
        {
            inElse = true; 
            InAElseStatement(node);
            
            if (node.GetIfStatement() != null)
            {
                node.GetIfStatement().Apply(this);
            }
           
            if (node.GetElse() != null)
            {
                node.GetElse().Apply(this);
            }
            if (node.GetLbrace() != null)
            {
                node.GetLbrace().Apply(this);
            }

            if (node.GetStatements() != null)
            {
                node.GetStatements().Apply(this);
            }

            if (!usedLs.Contains(labelCount))
            {
                _output.WriteLine("L" + (labelCount).ToString() + ":");
                usedLs.Add(labelCount);
                labelCount++;
            }
            else
            {
                labelCount++;
                _output.WriteLine("L" + (labelCount).ToString() + ":");
                usedLs.Add(labelCount);
                labelCount++;
            }
            
            if (node.GetRbrace() != null)
            {
                node.GetRbrace().Apply(this);
            }

            inElse = false;
            

            OutAElseStatement(node);
        }


        public override void InAWhileStatment(AWhileStatment node)
        {
            if (!usedLs.Contains(labelCount) && labelCount != saveLabel)
            {
                _output.WriteLine("L" + labelCount + ":");
                usedLs.Add(labelCount);
                labelCount++;
            }
            else
            {
                labelCount++;
                _output.WriteLine("L" + labelCount + ":");
                usedLs.Add(labelCount);
                labelCount++;
            }

        }

        public override void CaseAWhileStatment(AWhileStatment node)
        {
            bool toplevel = false;
            if (!outIfState)
            {
                outIfState = true;
                toplevel = true;
            }
            InAWhileStatment(node);
            if (node.GetWhile() != null)
            {
                node.GetWhile().Apply(this);
            }
            if (node.GetLparen() != null)
            {
                node.GetLparen().Apply(this);
            }
            int saveCount = labelCount + 1;
            // labelCount += 2;
            if (node.GetOrExpr() != null)
            {
                node.GetOrExpr().Apply(this);
            }
            if (node.GetRparen() != null)
            {
                node.GetRparen().Apply(this);
            }
            if (node.GetLbrace() != null)
            {
                node.GetLbrace().Apply(this);
            }
            if (!usedLs.Contains(labelCount))
            {
                _output.WriteLine("\tldc.i4 0");
                _output.WriteLine("\tbr L" + (labelCount).ToString());
                _output.WriteLine("L" + (labelCount - 1).ToString() + ":");
                _output.WriteLine("\tldc.i4 1");
                _output.WriteLine("L" + (labelCount).ToString() + ":");
                _output.WriteLine("\tldc.i4 0");
                usedLs.Add(labelCount);
                labelCount++;
                _output.WriteLine("\tbeq L" + (labelCount).ToString());
                saveLabel = labelCount;
                savedLabels.Add(saveLabel);
                //usedLs.Add(labelCount);
                // labelCount++;
            }
            else
            {
                labelCount++;
                _output.WriteLine("\tldc.i4 0");
                _output.WriteLine("\tbr L" + (labelCount).ToString());
                _output.WriteLine("L" + labelCount.ToString() + ":");
                _output.WriteLine("\tldc.i4 1");
                _output.WriteLine("L" + (labelCount).ToString() + ":");
                _output.WriteLine("\tldc.i4 0");
                _output.WriteLine("\tbeq L" + labelCount.ToString());
                //usedLs.Add(labelCount);
                //labelCount++;
            }


            if (node.GetStatements() != null)
            {
                node.GetStatements().Apply(this);
            }
            if (!toplevel)
            {
                if (!usedLs.Contains(labelCount))
                {
                    // _output.WriteLine("\tbr L" + saveCount.ToString());
                    _output.WriteLine("\tbr L" + labelCount.ToString());
                    usedLs.Add(labelCount);
                    labelCount++;
                }
                else
                {
                    labelCount++;
                    // _output.WriteLine("\tbr L" + saveCount.ToString());
                    _output.WriteLine("\tbr L" + labelCount.ToString());
                    usedLs.Add(labelCount);
                    labelCount++;
                }

            }
            if (inElse && toplevel)
            {
                if (!usedLs.Contains(labelCount))
                {
                    // _output.WriteLine("\tbr L" + saveCount.ToString());
                    _output.WriteLine("L" + labelCount.ToString() + ":");
                    usedLs.Add(labelCount);
                    labelCount++;
                }
                else
                {
                    labelCount++;
                    // _output.WriteLine("\tbr L" + saveCount.ToString());
                    _output.WriteLine("L" + labelCount.ToString() + ":");
                    usedLs.Add(labelCount);
                    labelCount++;
                }

            }
            else if (toplevel)
            {
                if (!usedLs.Contains(labelCount))
                {
                    _output.WriteLine("L" + (labelCount).ToString() + ":"); //savedLabels

                    usedLs.Add(labelCount);
                    labelCount++;
                }
                else
                {
                    labelCount++;
                    _output.WriteLine("L" + (labelCount).ToString() + ":");
                    usedLs.Add(labelCount);
                    labelCount++;
                }

            }

            if (node.GetRbrace() != null)
            {
                node.GetRbrace().Apply(this);
            }


            OutAWhileStatment(node);
        }

        public override void OutALtCompareExpr(ALtCompareExpr node)
        {
            if (!usedLs.Contains(labelCount))
            {
                _output.WriteLine("\tblt L" + (labelCount).ToString());
                usedLs.Add(labelCount);
                labelCount++;
            }
            else
            {
                labelCount++;
                _output.WriteLine("\tblt L" + (labelCount).ToString());
                usedLs.Add(labelCount);
                labelCount++;
            }
            
           
        }

        /*
        public override void InAIfStatement(AIfStatement node)
        {
            //setting label to of statement
            _output.WriteLine("L" + labelCount.ToString() +":");
            labelCount++;
        }
        public override void OutAIfStatement(AIfStatement node)
        {
           //setting label of else of just rest of function
            _output.WriteLine("L" + labelCount.ToString() + ":");
        }

        //less than expression 
        public override void OutALtCompareExpr(ALtCompareExpr node)
        {
            _output.WriteLine("\tblt L" + labelCount.ToString());
            _output.WriteLine("\tldc.i4 0");
            labelCount++;
            _output.WriteLine("\tbr L" + labelCount.ToString());
            _output.WriteLine("L" + (labelCount -1).ToString() + ":");
            _output.WriteLine("\tldc.i4 1");
            _output.WriteLine("\tldc.i4 0");
            labelCount++;
            _output.WriteLine("\tbeq L" + labelCount.ToString());
        }

        public override void OutAElseStatement(AElseStatement node)
        {
           
            _output.WriteLine("L" + labelCount.ToString() + ":");
        }
        */


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