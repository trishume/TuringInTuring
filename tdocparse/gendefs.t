class Builtin_Config_Display
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Config.Display (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Config_Display
class Builtin_Config_Lang
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Config.Lang (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Config_Lang
class Builtin_Config_Machine
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Config.Machine (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Config_Machine
class Builtin_Dir_Change
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	Dir.Change (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Dir_Change
class Builtin_Dir_Close
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Dir.Close (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Dir_Close
class Builtin_Dir_Create
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	Dir.Create (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Dir_Create
class Builtin_Dir_Delete
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	Dir.Delete (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Dir_Delete
class Builtin_Dir_Exists
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := Dir.Exists (sym0)    	
    	
    	result Builtin.FromBool(res)
    end Eval
end Builtin_Dir_Exists
class Builtin_Dir_Get
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Dir.Get (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_Dir_Get
class Builtin_Dir_GetLong
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToString (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	Dir.GetLong (sym0,sym1,sym2,sym3,sym4)    	
    	IntSymbol(params(1)).SetVal(sym0)
IntSymbol(params(3)).SetVal(sym2)
IntSymbol(params(4)).SetVal(sym3)
IntSymbol(params(5)).SetVal(sym4)
    	result NewSym ()
    end Eval
end Builtin_Dir_GetLong
class Builtin_Dir_Open
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := Dir.Open (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Dir_Open
class Builtin_Draw_Arc
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 7)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
var sym5 := Builtin.ToInt (params(6))
var sym6 := Builtin.ToInt (params(7))
    	Draw.Arc (sym0,sym1,sym2,sym3,sym4,sym5,sym6)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_Arc
class Builtin_Draw_Box
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	Draw.Box (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_Box
class Builtin_Draw_Dot
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
    	Draw.Dot (sym0,sym1,sym2)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_Dot
class Builtin_Draw_DashedLine
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 6)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
var sym5 := Builtin.ToInt (params(6))
    	Draw.DashedLine (sym0,sym1,sym2,sym3,sym4,sym5)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_DashedLine
class Builtin_Draw_Fill
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
    	Draw.Fill (sym0,sym1,sym2,sym3)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_Fill
class Builtin_Draw_FillArc
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 7)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
var sym5 := Builtin.ToInt (params(6))
var sym6 := Builtin.ToInt (params(7))
    	Draw.FillArc (sym0,sym1,sym2,sym3,sym4,sym5,sym6)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_FillArc
class Builtin_Draw_FillBox
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	Draw.FillBox (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_FillBox
class Builtin_Draw_FillMapleLeaf
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	Draw.FillMapleLeaf (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_FillMapleLeaf
class Builtin_Draw_FillOval
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	Draw.FillOval (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_FillOval
class Builtin_Draw_FillStar
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	Draw.FillStar (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_FillStar
class Builtin_Draw_Line
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	Draw.Line (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_Line
class Builtin_Draw_MapleLeaf
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	Draw.MapleLeaf (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_MapleLeaf
class Builtin_Draw_Oval
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	Draw.Oval (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_Oval
class Builtin_Draw_Star
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	Draw.Star (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_Star
class Builtin_Draw_Text
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToString (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	Draw.Text (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_Text
class Builtin_Draw_ThickLine
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 6)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
var sym5 := Builtin.ToInt (params(6))
    	Draw.ThickLine (sym0,sym1,sym2,sym3,sym4,sym5)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Draw_ThickLine
class Builtin_File_Copy
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToString (params(1))
var sym1 := Builtin.ToString (params(2))
    	File.Copy (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_File_Copy
class Builtin_File_Delete
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	File.Delete (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_File_Delete
class Builtin_File_DiskFree
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := File.DiskFree (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_File_DiskFree
class Builtin_File_Exists
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := File.Exists (sym0)    	
    	
    	result Builtin.FromBool(res)
    end Eval
end Builtin_File_Exists
class Builtin_File_FullPath
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := File.FullPath (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_File_FullPath
class Builtin_File_Parent
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := File.Parent (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_File_Parent
class Builtin_File_Rename
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToString (params(1))
var sym1 := Builtin.ToString (params(2))
    	File.Rename (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_File_Rename
class Builtin_File_Status
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToString (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
    	File.Status (sym0,sym1,sym2,sym3)    	
    	IntSymbol(params(2)).SetVal(sym1)
IntSymbol(params(3)).SetVal(sym2)
IntSymbol(params(4)).SetVal(sym3)
    	result NewSym ()
    end Eval
end Builtin_File_Status
class Builtin_Font_Draw
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToString (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	Font.Draw (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Font_Draw
class Builtin_Font_Free
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Font.Free (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Font_Free
class Builtin_Font_GetStyle
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToString (params(1))
var sym1 := Builtin.ToBool (params(2))
var sym2 := Builtin.ToBool (params(3))
var sym3 := Builtin.ToBool (params(4))
    	Font.GetStyle (sym0,sym1,sym2,sym3)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Font_GetStyle
class Builtin_Font_Name
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Font.Name (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_Font_Name
class Builtin_Font_New
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := Font.New (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Font_New
class Builtin_Font_Sizes
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	Font.Sizes (sym0,sym1,sym2,sym3,sym4)    	
    	IntSymbol(params(1)).SetVal(sym0)
IntSymbol(params(2)).SetVal(sym1)
IntSymbol(params(3)).SetVal(sym2)
IntSymbol(params(4)).SetVal(sym3)
IntSymbol(params(5)).SetVal(sym4)
    	result NewSym ()
    end Eval
end Builtin_Font_Sizes
class Builtin_Font_StartSize
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToString (params(1))
var sym1 := Builtin.ToString (params(2))
    	Font.StartSize (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Font_StartSize
class Builtin_Font_Width
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToString (params(1))
var sym1 := Builtin.ToInt (params(2))
    	var res := Font.Width (sym0,sym1)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Font_Width
class Builtin_GUI_AddLine
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToString (params(2))
    	GUI.AddLine (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_AddLine
class Builtin_GUI_AddText
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToString (params(2))
    	GUI.AddText (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_AddText
class Builtin_GUI_ClearText
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	GUI.ClearText (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_ClearText
class Builtin_GUI_CloseWindow
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	GUI.CloseWindow (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_CloseWindow
class Builtin_GUI_CreateCanvas
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
    	var res := GUI.CreateCanvas (sym0,sym1,sym2,sym3)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_GUI_CreateCanvas
class Builtin_GUI_CreateFrame
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	var res := GUI.CreateFrame (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_GUI_CreateFrame
class Builtin_GUI_CreateLabel
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToString (params(3))
    	var res := GUI.CreateLabel (sym0,sym1,sym2)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_GUI_CreateLabel
class Builtin_GUI_CreateLabelFull
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 7)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToString (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
var sym5 := Builtin.ToInt (params(6))
var sym6 := Builtin.ToInt (params(7))
    	var res := GUI.CreateLabelFull (sym0,sym1,sym2,sym3,sym4,sym5,sym6)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_GUI_CreateLabelFull
class Builtin_GUI_CreateLabelledFrame
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 6)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
var sym5 := Builtin.ToString (params(6))
    	var res := GUI.CreateLabelledFrame (sym0,sym1,sym2,sym3,sym4,sym5)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_GUI_CreateLabelledFrame
class Builtin_GUI_CreateLine
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	var res := GUI.CreateLine (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_GUI_CreateLine
class Builtin_GUI_CreateMenu
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := GUI.CreateMenu (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_GUI_CreateMenu
class Builtin_GUI_CreatePicture
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToBool (params(4))
    	var res := GUI.CreatePicture (sym0,sym1,sym2,sym3)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_GUI_CreatePicture
class Builtin_GUI_CreateTextBox
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
    	var res := GUI.CreateTextBox (sym0,sym1,sym2,sym3)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_GUI_CreateTextBox
class Builtin_GUI_CreateTextBoxFull
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 6)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
var sym5 := Builtin.ToInt (params(6))
    	var res := GUI.CreateTextBoxFull (sym0,sym1,sym2,sym3,sym4,sym5)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_GUI_CreateTextBoxFull
class Builtin_GUI_Disable
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	GUI.Disable (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_Disable
class Builtin_GUI_Dispose
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	GUI.Dispose (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_Dispose
class Builtin_GUI_Enable
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	GUI.Enable (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_Enable
class Builtin_GUI_FontDraw
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 6)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToString (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
var sym5 := Builtin.ToInt (params(6))
    	GUI.FontDraw (sym0,sym1,sym2,sym3,sym4,sym5)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_FontDraw
class Builtin_GUI_GetCheckBox
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := GUI.GetCheckBox (sym0)    	
    	
    	result Builtin.FromBool(res)
    end Eval
end Builtin_GUI_GetCheckBox
class Builtin_GUI_GetHeight
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := GUI.GetHeight (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_GUI_GetHeight
class Builtin_GUI_GetSliderValue
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := GUI.GetSliderValue (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_GUI_GetSliderValue
class Builtin_GUI_GetText
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := GUI.GetText (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_GUI_GetText
class Builtin_GUI_GetWidth
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := GUI.GetWidth (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_GUI_GetWidth
class Builtin_GUI_GetX
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := GUI.GetX (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_GUI_GetX
class Builtin_GUI_GetY
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := GUI.GetY (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_GUI_GetY
class Builtin_GUI_Hide
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	GUI.Hide (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_Hide
class Builtin_GUI_SelectRadio
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	GUI.SelectRadio (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SelectRadio
class Builtin_GUI_SetActive
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	GUI.SetActive (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetActive
class Builtin_GUI_SetBackgroundColor
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	GUI.SetBackgroundColor (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetBackgroundColor
class Builtin_GUI_SetCheckBox
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToBool (params(2))
    	GUI.SetCheckBox (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetCheckBox
class Builtin_GUI_SetDefault
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToBool (params(2))
    	GUI.SetDefault (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetDefault
class Builtin_GUI_SetDisplayWhenCreated
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToBool (params(1))
    	GUI.SetDisplayWhenCreated (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetDisplayWhenCreated
class Builtin_GUI_SetLabel
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToString (params(2))
    	GUI.SetLabel (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetLabel
class Builtin_GUI_SetPosition
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
    	GUI.SetPosition (sym0,sym1,sym2)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetPosition
class Builtin_GUI_SetPositionAndSize
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	GUI.SetPositionAndSize (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetPositionAndSize
class Builtin_GUI_SetScrollAmount
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
    	GUI.SetScrollAmount (sym0,sym1,sym2,sym3)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetScrollAmount
class Builtin_GUI_SetSelection
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
    	GUI.SetSelection (sym0,sym1,sym2)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetSelection
class Builtin_GUI_SetSize
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
    	GUI.SetSize (sym0,sym1,sym2)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetSize
class Builtin_GUI_SetSliderMinMax
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
    	GUI.SetSliderMinMax (sym0,sym1,sym2)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetSliderMinMax
class Builtin_GUI_SetSliderReverse
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	GUI.SetSliderReverse (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetSliderReverse
class Builtin_GUI_SetSliderSize
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	GUI.SetSliderSize (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetSliderSize
class Builtin_GUI_SetSliderValue
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	GUI.SetSliderValue (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetSliderValue
class Builtin_GUI_SetText
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToString (params(2))
    	GUI.SetText (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetText
class Builtin_GUI_SetXOR
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToBool (params(2))
    	GUI.SetXOR (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_SetXOR
class Builtin_GUI_Show
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	GUI.Show (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_GUI_Show
class Builtin_Joystick_GetInfo
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToBool (params(4))
var sym4 := Builtin.ToBool (params(5))
    	Joystick.GetInfo (sym0,sym1,sym2,sym3,sym4)    	
    	IntSymbol(params(1)).SetVal(sym0)
IntSymbol(params(2)).SetVal(sym1)
IntSymbol(params(3)).SetVal(sym2)
    	result NewSym ()
    end Eval
end Builtin_Joystick_GetInfo
class Builtin_Math_Distance
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToReal (params(1))
var sym1 := Builtin.ToReal (params(2))
var sym2 := Builtin.ToReal (params(3))
var sym3 := Builtin.ToReal (params(4))
    	var res := Math.Distance (sym0,sym1,sym2,sym3)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_Math_Distance
class Builtin_Mouse_ButtonChoose
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	Mouse.ButtonChoose (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Mouse_ButtonChoose
class Builtin_Mouse_ButtonMoved
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := Mouse.ButtonMoved (sym0)    	
    	
    	result Builtin.FromBool(res)
    end Eval
end Builtin_Mouse_ButtonMoved
class Builtin_Mouse_ButtonWait
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToString (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	Mouse.ButtonWait (sym0,sym1,sym2,sym3,sym4)    	
    	IntSymbol(params(2)).SetVal(sym1)
IntSymbol(params(3)).SetVal(sym2)
IntSymbol(params(4)).SetVal(sym3)
IntSymbol(params(5)).SetVal(sym4)
    	result NewSym ()
    end Eval
end Builtin_Mouse_ButtonWait
class Builtin_Mouse_Where
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
    	Mouse.Where (sym0,sym1,sym2)    	
    	IntSymbol(params(1)).SetVal(sym0)
IntSymbol(params(2)).SetVal(sym1)
IntSymbol(params(3)).SetVal(sym2)
    	result NewSym ()
    end Eval
end Builtin_Mouse_Where
class Builtin_Music_Play
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	Music.Play (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Music_Play
class Builtin_Music_PlayFile
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	Music.PlayFile (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Music_PlayFile
class Builtin_Music_PlayFileLoop
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	Music.PlayFileLoop (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Music_PlayFileLoop
class Builtin_Music_PlayFileReturn
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	Music.PlayFileReturn (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Music_PlayFileReturn
class Builtin_Music_PlayFileStop
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 0)
    	
    	Music.PlayFileStop ()    	
    	
    	result NewSym ()
    end Eval
end Builtin_Music_PlayFileStop
class Builtin_Music_Sound
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	Music.Sound (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Music_Sound
class Builtin_Music_SoundOff
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 0)
    	
    	Music.SoundOff ()    	
    	
    	result NewSym ()
    end Eval
end Builtin_Music_SoundOff
class Builtin_Net_BytesAvailable
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Net.BytesAvailable (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Net_BytesAvailable
class Builtin_Net_CharAvailable
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Net.CharAvailable (sym0)    	
    	
    	result Builtin.FromBool(res)
    end Eval
end Builtin_Net_CharAvailable
class Builtin_Net_CloseConnection
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Net.CloseConnection (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Net_CloseConnection
class Builtin_Net_HostAddressFromName
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := Net.HostAddressFromName (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_Net_HostAddressFromName
class Builtin_Net_HostNameFromAddress
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := Net.HostNameFromAddress (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_Net_HostNameFromAddress
class Builtin_Net_LineAvailable
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Net.LineAvailable (sym0)    	
    	
    	result Builtin.FromBool(res)
    end Eval
end Builtin_Net_LineAvailable
class Builtin_Net_OpenConnection
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToString (params(1))
var sym1 := Builtin.ToInt (params(2))
    	var res := Net.OpenConnection (sym0,sym1)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Net_OpenConnection
class Builtin_Net_OpenURLConnection
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := Net.OpenURLConnection (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Net_OpenURLConnection
class Builtin_Net_TokenAvailable
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Net.TokenAvailable (sym0)    	
    	
    	result Builtin.FromBool(res)
    end Eval
end Builtin_Net_TokenAvailable
class Builtin_Net_WaitForConnection
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToString (params(2))
    	var res := Net.WaitForConnection (sym0,sym1)    	
    	IntSymbol(params(1)).SetVal(sym0)
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Net_WaitForConnection
class Builtin_PC_ParallelPut
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	PC.ParallelPut (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_PC_ParallelPut
class Builtin_Pic_Blend
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
    	var res := Pic.Blend (sym0,sym1,sym2)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Pic_Blend
class Builtin_Pic_Blur
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	var res := Pic.Blur (sym0,sym1)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Pic_Blur
class Builtin_Pic_Draw
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
    	Pic.Draw (sym0,sym1,sym2,sym3)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Pic_Draw
class Builtin_Pic_DrawSpecial
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 6)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
var sym5 := Builtin.ToInt (params(6))
    	Pic.DrawSpecial (sym0,sym1,sym2,sym3,sym4,sym5)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Pic_DrawSpecial
class Builtin_Pic_DrawSpecialBack
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 6)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
var sym5 := Builtin.ToInt (params(6))
    	Pic.DrawSpecialBack (sym0,sym1,sym2,sym3,sym4,sym5)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Pic_DrawSpecialBack
class Builtin_Pic_FileNew
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := Pic.FileNew (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Pic_FileNew
class Builtin_Pic_Flip
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Pic.Flip (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Pic_Flip
class Builtin_Pic_Free
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Pic.Free (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Pic_Free
class Builtin_Pic_Height
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Pic.Height (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Pic_Height
class Builtin_Pic_Mirror
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Pic.Mirror (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Pic_Mirror
class Builtin_Pic_New
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
    	var res := Pic.New (sym0,sym1,sym2,sym3)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Pic_New
class Builtin_Pic_Rotate
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
    	var res := Pic.Rotate (sym0,sym1,sym2,sym3)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Pic_Rotate
class Builtin_Pic_Save
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToString (params(2))
    	Pic.Save (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Pic_Save
class Builtin_Pic_Scale
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
    	var res := Pic.Scale (sym0,sym1,sym2)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Pic_Scale
class Builtin_Pic_ScreenLoad
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToString (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
    	Pic.ScreenLoad (sym0,sym1,sym2,sym3)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Pic_ScreenLoad
class Builtin_Pic_ScreenSave
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToString (params(5))
    	Pic.ScreenSave (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Pic_ScreenSave
class Builtin_Pic_Width
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Pic.Width (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Pic_Width
class Builtin_RGB_AddColor
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToReal (params(1))
var sym1 := Builtin.ToReal (params(2))
var sym2 := Builtin.ToReal (params(3))
    	var res := RGB.AddColor (sym0,sym1,sym2)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_RGB_AddColor
class Builtin_RGB_AddColour
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToReal (params(1))
var sym1 := Builtin.ToReal (params(2))
var sym2 := Builtin.ToReal (params(3))
    	var res := RGB.AddColour (sym0,sym1,sym2)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_RGB_AddColour
class Builtin_RGB_GetColor
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToReal (params(2))
var sym2 := Builtin.ToReal (params(3))
var sym3 := Builtin.ToReal (params(4))
    	RGB.GetColor (sym0,sym1,sym2,sym3)    	
    	IntSymbol(params(1)).SetVal(sym0)
    	result NewSym ()
    end Eval
end Builtin_RGB_GetColor
class Builtin_RGB_GetColour
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToReal (params(2))
var sym2 := Builtin.ToReal (params(3))
var sym3 := Builtin.ToReal (params(4))
    	RGB.GetColour (sym0,sym1,sym2,sym3)    	
    	IntSymbol(params(1)).SetVal(sym0)
    	result NewSym ()
    end Eval
end Builtin_RGB_GetColour
class Builtin_Rand_Int
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	var res := Rand.Int (sym0,sym1)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Rand_Int
class Builtin_Sprite_Animate
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToBool (params(5))
    	Sprite.Animate (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Sprite_Animate
class Builtin_Sprite_ChangePic
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	Sprite.ChangePic (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Sprite_ChangePic
class Builtin_Sprite_Free
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Sprite.Free (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Sprite_Free
class Builtin_Sprite_Hide
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Sprite.Hide (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Sprite_Hide
class Builtin_Sprite_New
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Sprite.New (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Sprite_New
class Builtin_Sprite_SetFrameRate
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Sprite.SetFrameRate (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Sprite_SetFrameRate
class Builtin_Sprite_SetHeight
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	Sprite.SetHeight (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Sprite_SetHeight
class Builtin_Sprite_SetPosition
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToBool (params(4))
    	Sprite.SetPosition (sym0,sym1,sym2,sym3)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Sprite_SetPosition
class Builtin_Sprite_Show
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Sprite.Show (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Sprite_Show
class Builtin_Str_Lower
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := Str.Lower (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_Str_Lower
class Builtin_Str_Trim
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := Str.Trim (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_Str_Trim
class Builtin_Str_Upper
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := Str.Upper (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_Str_Upper
class Builtin_Sys_Exec
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := Sys.Exec (sym0)    	
    	
    	result Builtin.FromBool(res)
    end Eval
end Builtin_Sys_Exec
class Builtin_Sys_FetchArg
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Sys.FetchArg (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_Sys_FetchArg
class Builtin_Sys_GetEnv
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := Sys.GetEnv (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_Sys_GetEnv
class Builtin_Text_Color
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Text.Color (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Text_Color
class Builtin_Text_ColorBack
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Text.ColorBack (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Text_ColorBack
class Builtin_Text_Colour
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Text.Colour (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Text_Colour
class Builtin_Text_ColourBack
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Text.ColourBack (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Text_ColourBack
class Builtin_Text_Locate
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	Text.Locate (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Text_Locate
class Builtin_Text_LocateXY
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	Text.LocateXY (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Text_LocateXY
class Builtin_Time_DateSec
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := Time.DateSec (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Time_DateSec
class Builtin_Time_Delay
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Time.Delay (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Time_Delay
class Builtin_Time_DelaySinceLast
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Time.DelaySinceLast (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Time_DelaySinceLast
class Builtin_Time_Elapsed
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 0)
    	
    	var res := Time.Elapsed ()    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Time_Elapsed
class Builtin_Time_PartsSec
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 6)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
var sym5 := Builtin.ToInt (params(6))
    	var res := Time.PartsSec (sym0,sym1,sym2,sym3,sym4,sym5)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Time_PartsSec
class Builtin_Time_Sec
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 0)
    	
    	var res := Time.Sec ()    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Time_Sec
class Builtin_Time_SecDate
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := Time.SecDate (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_Time_SecDate
class Builtin_Time_SecParts
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 8)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
var sym5 := Builtin.ToInt (params(6))
var sym6 := Builtin.ToInt (params(7))
var sym7 := Builtin.ToInt (params(8))
    	Time.SecParts (sym0,sym1,sym2,sym3,sym4,sym5,sym6,sym7)    	
    	IntSymbol(params(1)).SetVal(sym0)
IntSymbol(params(2)).SetVal(sym1)
IntSymbol(params(3)).SetVal(sym2)
IntSymbol(params(4)).SetVal(sym3)
IntSymbol(params(5)).SetVal(sym4)
IntSymbol(params(6)).SetVal(sym5)
IntSymbol(params(7)).SetVal(sym6)
IntSymbol(params(8)).SetVal(sym7)
    	result NewSym ()
    end Eval
end Builtin_Time_SecParts
class Builtin_Time_SecStr
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToString (params(2))
    	var res := Time.SecStr (sym0,sym1)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_Time_SecStr
class Builtin_View_ClipAdd
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
    	View.ClipAdd (sym0,sym1,sym2,sym3)    	
    	
    	result NewSym ()
    end Eval
end Builtin_View_ClipAdd
class Builtin_View_ClipAddOval
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
    	View.ClipAddOval (sym0,sym1,sym2,sym3)    	
    	
    	result NewSym ()
    end Eval
end Builtin_View_ClipAddOval
class Builtin_View_ClipSet
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
    	View.ClipSet (sym0,sym1,sym2,sym3)    	
    	
    	result NewSym ()
    end Eval
end Builtin_View_ClipSet
class Builtin_View_Set
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	View.Set (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_View_Set
class Builtin_View_SetTransparentColor
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	View.SetTransparentColor (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_View_SetTransparentColor
class Builtin_View_SetTransparentColour
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	View.SetTransparentColour (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_View_SetTransparentColour
class Builtin_View_UpdateArea
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
    	View.UpdateArea (sym0,sym1,sym2,sym3)    	
    	
    	result NewSym ()
    end Eval
end Builtin_View_UpdateArea
class Builtin_View_WhatDotColor
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	var res := View.WhatDotColor (sym0,sym1)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_View_WhatDotColor
class Builtin_View_WhatDotColour
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	var res := View.WhatDotColour (sym0,sym1)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_View_WhatDotColour
class Builtin_Window_Close
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Window.Close (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Window_Close
class Builtin_Window_GetPosition
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
    	Window.GetPosition (sym0,sym1,sym2)    	
    	IntSymbol(params(1)).SetVal(sym0)
IntSymbol(params(2)).SetVal(sym1)
IntSymbol(params(3)).SetVal(sym2)
    	result NewSym ()
    end Eval
end Builtin_Window_GetPosition
class Builtin_Window_Hide
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Window.Hide (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Window_Hide
class Builtin_Window_Open
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := Window.Open (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_Window_Open
class Builtin_Window_Select
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Window.Select (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Window_Select
class Builtin_Window_Set
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToString (params(2))
    	Window.Set (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Window_Set
class Builtin_Window_SetPosition
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
    	Window.SetPosition (sym0,sym1,sym2)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Window_SetPosition
class Builtin_Window_Show
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Window.Show (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Window_Show
class Builtin_Window_Update
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	Window.Update (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Window_Update
class Builtin_Window_UpdateArea
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	Window.UpdateArea (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_Window_UpdateArea
class Builtin_abs
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := abs (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_abs
class Builtin_arccos
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := arccos (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_arccos
class Builtin_arccosd
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := arccosd (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_arccosd
class Builtin_arcsin
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := arcsin (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_arcsin
class Builtin_arcsind
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := arcsind (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_arcsind
class Builtin_arctan
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := arctan (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_arctan
class Builtin_arctand
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := arctand (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_arctand
class Builtin_buttonchoose
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	buttonchoose (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_buttonchoose
class Builtin_buttonmoved
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := buttonmoved (sym0)    	
    	
    	result Builtin.FromBool(res)
    end Eval
end Builtin_buttonmoved
class Builtin_buttonwait
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToString (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	buttonwait (sym0,sym1,sym2,sym3,sym4)    	
    	IntSymbol(params(2)).SetVal(sym1)
IntSymbol(params(3)).SetVal(sym2)
IntSymbol(params(4)).SetVal(sym3)
IntSymbol(params(5)).SetVal(sym4)
    	result NewSym ()
    end Eval
end Builtin_buttonwait
class Builtin_ceil
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := ceil (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_ceil
class Builtin_clock
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	clock (sym0)    	
    	IntSymbol(params(1)).SetVal(sym0)
    	result NewSym ()
    end Eval
end Builtin_clock
class Builtin_cls
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 0)
    	
    	cls ()    	
    	
    	result NewSym ()
    end Eval
end Builtin_cls
class Builtin_color
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	color (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_color
class Builtin_colorback
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	colorback (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_colorback
class Builtin_colour
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	colour (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_colour
class Builtin_colourback
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	colourback (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_colourback
class Builtin_cos
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := cos (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_cos
class Builtin_cosd
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := cosd (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_cosd
class Builtin_date
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	date (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_date
class Builtin_delay
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	delay (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_delay
class Builtin_drawarc
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 7)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
var sym5 := Builtin.ToInt (params(6))
var sym6 := Builtin.ToInt (params(7))
    	drawarc (sym0,sym1,sym2,sym3,sym4,sym5,sym6)    	
    	
    	result NewSym ()
    end Eval
end Builtin_drawarc
class Builtin_drawbox
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	drawbox (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_drawbox
class Builtin_drawdot
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
    	drawdot (sym0,sym1,sym2)    	
    	
    	result NewSym ()
    end Eval
end Builtin_drawdot
class Builtin_drawfill
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
    	drawfill (sym0,sym1,sym2,sym3)    	
    	
    	result NewSym ()
    end Eval
end Builtin_drawfill
class Builtin_drawfillarc
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 7)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
var sym5 := Builtin.ToInt (params(6))
var sym6 := Builtin.ToInt (params(7))
    	drawfillarc (sym0,sym1,sym2,sym3,sym4,sym5,sym6)    	
    	
    	result NewSym ()
    end Eval
end Builtin_drawfillarc
class Builtin_drawfillbox
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	drawfillbox (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_drawfillbox
class Builtin_drawfillmapleleaf
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	drawfillmapleleaf (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_drawfillmapleleaf
class Builtin_drawfilloval
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	drawfilloval (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_drawfilloval
class Builtin_drawfillstar
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	drawfillstar (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_drawfillstar
class Builtin_drawline
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	drawline (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_drawline
class Builtin_drawmapleleaf
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	drawmapleleaf (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_drawmapleleaf
class Builtin_drawoval
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	drawoval (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_drawoval
class Builtin_drawstar
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 5)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
var sym4 := Builtin.ToInt (params(5))
    	drawstar (sym0,sym1,sym2,sym3,sym4)    	
    	
    	result NewSym ()
    end Eval
end Builtin_drawstar
class Builtin_exp
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := exp (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_exp
class Builtin_fetcharg
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := fetcharg (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_fetcharg
class Builtin_floor
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := floor (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_floor
class Builtin_frealstr
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToReal (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
    	var res := frealstr (sym0,sym1,sym2)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_frealstr
class Builtin_getenv
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := getenv (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_getenv
class Builtin_index
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToString (params(1))
var sym1 := Builtin.ToString (params(2))
    	var res := index (sym0,sym1)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_index
class Builtin_intreal
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := intreal (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_intreal
class Builtin_intstr
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	var res := intstr (sym0)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_intstr
class Builtin_length
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := length (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_length
class Builtin_ln
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := ln (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_ln
class Builtin_locate
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	locate (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_locate
class Builtin_locatexy
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	locatexy (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_locatexy
class Builtin_mousewhere
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
    	mousewhere (sym0,sym1,sym2)    	
    	IntSymbol(params(1)).SetVal(sym0)
IntSymbol(params(2)).SetVal(sym1)
IntSymbol(params(3)).SetVal(sym2)
    	result NewSym ()
    end Eval
end Builtin_mousewhere
class Builtin_parallelput
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	parallelput (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_parallelput
class Builtin_play
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	play (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_play
class Builtin_rand
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	rand (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_rand
class Builtin_randint
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 3)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
    	randint (sym0,sym1,sym2)    	
    	IntSymbol(params(1)).SetVal(sym0)
IntSymbol(params(2)).SetVal(sym1)
IntSymbol(params(3)).SetVal(sym2)
    	result NewSym ()
    end Eval
end Builtin_randint
class Builtin_realstr
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToReal (params(1))
var sym1 := Builtin.ToInt (params(2))
    	var res := realstr (sym0,sym1)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_realstr
class Builtin_repeat
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToString (params(1))
var sym1 := Builtin.ToInt (params(2))
    	var res := repeat (sym0,sym1)    	
    	
    	result Builtin.FromString(res)
    end Eval
end Builtin_repeat
class Builtin_round
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := round (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_round
class Builtin_setscreen
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	setscreen (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_setscreen
class Builtin_sign
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := sign (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_sign
class Builtin_sin
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := sin (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_sin
class Builtin_sind
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := sind (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_sind
class Builtin_sizepic
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 4)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
var sym2 := Builtin.ToInt (params(3))
var sym3 := Builtin.ToInt (params(4))
    	var res := sizepic (sym0,sym1,sym2,sym3)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_sizepic
class Builtin_sound
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	sound (sym0,sym1)    	
    	
    	result NewSym ()
    end Eval
end Builtin_sound
class Builtin_sqrt
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := sqrt (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_sqrt
class Builtin_strint
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := strint (sym0)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_strint
class Builtin_strintok
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := strintok (sym0)    	
    	
    	result Builtin.FromBool(res)
    end Eval
end Builtin_strintok
class Builtin_strnatok
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := strnatok (sym0)    	
    	
    	result Builtin.FromBool(res)
    end Eval
end Builtin_strnatok
class Builtin_strreal
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := strreal (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_strreal
class Builtin_strrealok
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	var res := strrealok (sym0)    	
    	
    	result Builtin.FromBool(res)
    end Eval
end Builtin_strrealok
class Builtin_sysclock
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	sysclock (sym0)    	
    	IntSymbol(params(1)).SetVal(sym0)
    	result NewSym ()
    end Eval
end Builtin_sysclock
class Builtin_system
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToString (params(1))
var sym1 := Builtin.ToInt (params(2))
    	system (sym0,sym1)    	
    	IntSymbol(params(2)).SetVal(sym1)
    	result NewSym ()
    end Eval
end Builtin_system
class Builtin_tan
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := tan (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_tan
class Builtin_tand
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToReal (params(1))
    	var res := tand (sym0)    	
    	
    	result Builtin.FromReal(res)
    end Eval
end Builtin_tand
class Builtin_time
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToString (params(1))
    	time (sym0)    	
    	
    	result NewSym ()
    end Eval
end Builtin_time
class Builtin_wallclock
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 1)
    	var sym0 := Builtin.ToInt (params(1))
    	wallclock (sym0)    	
    	IntSymbol(params(1)).SetVal(sym0)
    	result NewSym ()
    end Eval
end Builtin_wallclock
class Builtin_whatdotcolor
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	var res := whatdotcolor (sym0,sym1)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_whatdotcolor
class Builtin_whatdotcolour
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), 2)
    	var sym0 := Builtin.ToInt (params(1))
var sym1 := Builtin.ToInt (params(2))
    	var res := whatdotcolour (sym0,sym1)    	
    	
    	result Builtin.FromInt(res)
    end Eval
end Builtin_whatdotcolour
