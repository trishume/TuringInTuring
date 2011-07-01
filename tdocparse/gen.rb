SUPPORTED_TYPES = ["int","string","boolean","real"]
def conv_fcn(type,pref = "To")
  convfunc = nil
  case type
  when "int"
    convfunc = pref + "Int"
  when "string"
    convfunc = pref + "String"
  when "boolean"
    convfunc = pref + "Bool"
  when "real"
    convfunc = pref + "Real"
  end
end
def gen_int_const(name)
  out = <<HEREDOC
  var #{name}Const : ^IntSymbol
  new #{name}Const
  #{name}Const -> create (o)
  #{name}Const -> SetVal (#{name})
  s -> define ("#{name}", #{name}Const)

HEREDOC
  return out
end
def gen_init(funcdef)
    funcname = funcdef
    out = <<HEREDOC
  var #{funcname}Func : ^Symbol
  new Builtin_#{funcname}, #{funcname}Func
  #{funcname}Func -> create (out)
  s -> define ("#{funcname}", #{funcname}Func)

HEREDOC
  return out
end
def gen_interface(funcdef)
  if (funcdef =~ /^[^\s]*\s([^\s]*)\s\(([^\[\]]*)(?: \[.*\])?\)(?: : ([\w]*))?[\s]+/) != nil
    funcname = $1
    params = $2
    rval = $3
    processed = params.scan(/([,\s\w]*)\s:\s([\w]*)[,]?/)
    dotfcnname = funcname.clone
    funcname.sub!(/\./,"_")
    #puts "--"
    #puts params
    #puts processed.to_s
    
    #return nil if processed.length == 0
    ptr = 0
    plist = []
    processed.each do |pair|
      if !(SUPPORTED_TYPES.include?(pair[1]))
        return nil
      end
      pl = pair[0].split(",").length
      pl.times do |n|
        plist << pair[1]
      end
    end
    #puts plist.to_s
    passparams = []
    convs = []
    pnum = 1
    plist.length.times do |p|
      varname = "sym#{p}"
      passparams << varname
      convfunc = conv_fcn(plist[p],"To")
      line = "var #{varname} := Builtin.#{convfunc} (params(#{p + 1}))"
      convs << line
    end
    # return value -----
    callline = ""
    retline = "result NewSym ()"
    #puts "'#{rval}'"
    if rval != nil
      if !(SUPPORTED_TYPES.include?(rval))
        return nil
      end
      callline = "var res := #{dotfcnname} (#{passparams.join(",")})"
      convfunc = conv_fcn(rval,"From")
      retline = "result Builtin.#{convfunc}(res)"
    else
      callline = "#{dotfcnname} (#{passparams.join(",")})"
    end
    # EVIL: inefficient method of parsing reference parameters
    refsets = []
    if (params =~ /var/) != nil
      plist.length.times do |p|
        if plist[p] == "int"
          line = "IntSymbol(params(#{p + 1})).SetVal(sym#{p})"
          refsets << line
        end
      end
    end
    
    out = <<HEREDOC
class Builtin_#{funcname}
    inherit ExecutableSymbol
    import Builtin, IntSymbol,BoolSymbol,StringSymbol, NewSym,
    File,GUI,Dir,Font,Input,Joystick,Window,View,Text,Sys,Sprite,Rand,RGB,Pic,
    PC,Net,Music,Mouse,Draw,Str,Math
    body fcn Eval (params : array 1 .. * of ^Symbol) : ^Symbol
    	Builtin.VerifyParams (upper (params), #{plist.length})
    	#{convs.join("\n")}
    	#{callline}    	
    	#{refsets.join("\n")}
    	#{retline}
    end Eval
end Builtin_#{funcname}
HEREDOC
    File.open("outmethods.txt", 'a') do |file|
        file.puts funcname
    end
    return out
  end
  return nil
end
def gen_interfaces(lines)
  File.delete("outmethods.txt") if File::exists?( "outmethods.txt" )
  lines.each do |l| 
      res = gen_interface(l)
      puts res if res != nil
  end
end
def gen_inits(lines)
  puts "proc DefineGeneratedSymbols (s : ^Scope, out : ^OutputHandler)"
  lines.each do |l| 
      res = gen_init(l)
      puts res if res != nil
  end
  puts "end DefineGeneratedSymbols"
end
def gen_consts(lines)
  puts "proc DefineGeneratedConstants (s : ^Scope, o : ^OutputHandler)"
  lines.each do |l| 
      res = gen_int_const(l)
      puts res if res != nil
  end
  puts "end DefineGeneratedConstants"
end
def filter(lines)
  lines.select { |funcdef|
      ((funcdef =~ /^[^\s]*\s([^\s]*)\s\((([,\s\w]*)\s:\s([\w]*)[,]?)*(?: \[.*\])?\)(?: : (.*))?/) != nil)
    }
end
lines =STDIN.read.split("\n")
case ARGV[0]
when "filter"
  puts filter(lines)
when "gen"
  gen_interfaces(lines)
when "inits"
  gen_inits(lines)
when "consts"
  gen_consts(lines)
end
#puts filter(lines)
