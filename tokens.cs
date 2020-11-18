/* This file was generated by SableCC (http://www.sablecc.org/). */

using System;
using System.Collections;
using System.Text;

using  CS426.analysis;

namespace CS426.node {


public sealed class TPlus : Token
{
    public TPlus(string text)
    {
        Text = text;
    }

    public TPlus(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TPlus(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTPlus(this);
    }
}

public sealed class TMult : Token
{
    public TMult(string text)
    {
        Text = text;
    }

    public TMult(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TMult(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTMult(this);
    }
}

public sealed class TSubtract : Token
{
    public TSubtract(string text)
    {
        Text = text;
    }

    public TSubtract(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TSubtract(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTSubtract(this);
    }
}

public sealed class TDivide : Token
{
    public TDivide(string text)
    {
        Text = text;
    }

    public TDivide(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TDivide(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTDivide(this);
    }
}

public sealed class TAssign : Token
{
    public TAssign(string text)
    {
        Text = text;
    }

    public TAssign(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TAssign(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTAssign(this);
    }
}

public sealed class TEquality : Token
{
    public TEquality(string text)
    {
        Text = text;
    }

    public TEquality(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TEquality(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTEquality(this);
    }
}

public sealed class TGreaterthan : Token
{
    public TGreaterthan(string text)
    {
        Text = text;
    }

    public TGreaterthan(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TGreaterthan(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTGreaterthan(this);
    }
}

public sealed class TLessthan : Token
{
    public TLessthan(string text)
    {
        Text = text;
    }

    public TLessthan(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TLessthan(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTLessthan(this);
    }
}

public sealed class TGreaterequals : Token
{
    public TGreaterequals(string text)
    {
        Text = text;
    }

    public TGreaterequals(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TGreaterequals(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTGreaterequals(this);
    }
}

public sealed class TLessequals : Token
{
    public TLessequals(string text)
    {
        Text = text;
    }

    public TLessequals(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TLessequals(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTLessequals(this);
    }
}

public sealed class TAnd : Token
{
    public TAnd(string text)
    {
        Text = text;
    }

    public TAnd(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TAnd(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTAnd(this);
    }
}

public sealed class TOr : Token
{
    public TOr(string text)
    {
        Text = text;
    }

    public TOr(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TOr(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTOr(this);
    }
}

public sealed class TNot : Token
{
    public TNot(string text)
    {
        Text = text;
    }

    public TNot(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TNot(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTNot(this);
    }
}

public sealed class TLparen : Token
{
    public TLparen(string text)
    {
        Text = text;
    }

    public TLparen(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TLparen(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTLparen(this);
    }
}

public sealed class TRparen : Token
{
    public TRparen(string text)
    {
        Text = text;
    }

    public TRparen(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TRparen(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTRparen(this);
    }
}

public sealed class TLbrack : Token
{
    public TLbrack(string text)
    {
        Text = text;
    }

    public TLbrack(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TLbrack(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTLbrack(this);
    }
}

public sealed class TRbrack : Token
{
    public TRbrack(string text)
    {
        Text = text;
    }

    public TRbrack(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TRbrack(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTRbrack(this);
    }
}

public sealed class TLbrace : Token
{
    public TLbrace(string text)
    {
        Text = text;
    }

    public TLbrace(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TLbrace(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTLbrace(this);
    }
}

public sealed class TRbrace : Token
{
    public TRbrace(string text)
    {
        Text = text;
    }

    public TRbrace(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TRbrace(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTRbrace(this);
    }
}

public sealed class TEol : Token
{
    public TEol(string text)
    {
        Text = text;
    }

    public TEol(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TEol(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTEol(this);
    }
}

public sealed class TIf : Token
{
    public TIf(string text)
    {
        Text = text;
    }

    public TIf(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TIf(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTIf(this);
    }
}

public sealed class TElse : Token
{
    public TElse(string text)
    {
        Text = text;
    }

    public TElse(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TElse(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTElse(this);
    }
}

public sealed class TWhile : Token
{
    public TWhile(string text)
    {
        Text = text;
    }

    public TWhile(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TWhile(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTWhile(this);
    }
}

public sealed class TFunction : Token
{
    public TFunction(string text)
    {
        Text = text;
    }

    public TFunction(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TFunction(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTFunction(this);
    }
}

public sealed class TConstant : Token
{
    public TConstant(string text)
    {
        Text = text;
    }

    public TConstant(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TConstant(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTConstant(this);
    }
}

public sealed class TFor : Token
{
    public TFor(string text)
    {
        Text = text;
    }

    public TFor(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TFor(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTFor(this);
    }
}

public sealed class TMain : Token
{
    public TMain(string text)
    {
        Text = text;
    }

    public TMain(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TMain(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTMain(this);
    }
}

public sealed class TComma : Token
{
    public TComma(string text)
    {
        Text = text;
    }

    public TComma(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TComma(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTComma(this);
    }
}

public sealed class TNegative : Token
{
    public TNegative(string text)
    {
        Text = text;
    }

    public TNegative(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TNegative(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTNegative(this);
    }
}

public sealed class TId : Token
{
    public TId(string text)
    {
        Text = text;
    }

    public TId(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TId(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTId(this);
    }
}

public sealed class TComment : Token
{
    public TComment(string text)
    {
        Text = text;
    }

    public TComment(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TComment(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTComment(this);
    }
}

public sealed class TString : Token
{
    public TString(string text)
    {
        Text = text;
    }

    public TString(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TString(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTString(this);
    }
}

public sealed class TFloat : Token
{
    public TFloat(string text)
    {
        Text = text;
    }

    public TFloat(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TFloat(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTFloat(this);
    }
}

public sealed class TInt : Token
{
    public TInt(string text)
    {
        Text = text;
    }

    public TInt(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TInt(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTInt(this);
    }
}

public sealed class TBlank : Token
{
    public TBlank(string text)
    {
        Text = text;
    }

    public TBlank(string text, int line, int pos)
    {
        Text = text;
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
      return new TBlank(Text, Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseTBlank(this);
    }
}


public abstract class Token : Node
{
    private string text;
    private int line;
    private int pos;

    public virtual string Text
    {
      get { return text; }
      set { text = value; }
    }

    public int Line
    {
      get { return line; }
      set { line = value; }
    }

    public int Pos
    {
      get { return pos; }
      set { pos = value; }
    }

    public override string ToString()
    {
        return text + " ";
    }

    internal override void RemoveChild(Node child)
    {
    }

    internal override void ReplaceChild(Node oldChild, Node newChild)
    {
    }
}

public sealed class EOF : Token
{
    public EOF()
    {
        Text = "";
    }

    public EOF(int line, int pos)
    {
        Text = "";
        Line = line;
        Pos = pos;
    }

    public override Object Clone()
    {
        return new EOF(Line, Pos);
    }

    public override void Apply(Switch sw)
    {
        ((Analysis) sw).CaseEOF(this);
    }
}
}