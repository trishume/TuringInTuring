proc DefineGeneratedConstants (s : ^Scope, o : ^OutputHandler)
  var redConst : ^IntSymbol
  new redConst
  redConst -> create (o)
  redConst -> SetVal (red)
  s -> define ("red", redConst)

  var blueConst : ^IntSymbol
  new blueConst
  blueConst -> create (o)
  blueConst -> SetVal (blue)
  s -> define ("blue", blueConst)

  var greenConst : ^IntSymbol
  new greenConst
  greenConst -> create (o)
  greenConst -> SetVal (green)
  s -> define ("green", greenConst)

  var brightredConst : ^IntSymbol
  new brightredConst
  brightredConst -> create (o)
  brightredConst -> SetVal (brightred)
  s -> define ("brightred", brightredConst)

  var brightblueConst : ^IntSymbol
  new brightblueConst
  brightblueConst -> create (o)
  brightblueConst -> SetVal (brightblue)
  s -> define ("brightblue", brightblueConst)

  var brightgreenConst : ^IntSymbol
  new brightgreenConst
  brightgreenConst -> create (o)
  brightgreenConst -> SetVal (brightgreen)
  s -> define ("brightgreen", brightgreenConst)

  var whiteConst : ^IntSymbol
  new whiteConst
  whiteConst -> create (o)
  whiteConst -> SetVal (white)
  s -> define ("white", whiteConst)

  var blackConst : ^IntSymbol
  new blackConst
  blackConst -> create (o)
  blackConst -> SetVal (black)
  s -> define ("black", blackConst)

  var picMergeConst : ^IntSymbol
  new picMergeConst
  picMergeConst -> create (o)
  picMergeConst -> SetVal (picMerge)
  s -> define ("picMerge", picMergeConst)

  var picCopyConst : ^IntSymbol
  new picCopyConst
  picCopyConst -> create (o)
  picCopyConst -> SetVal (picCopy)
  s -> define ("picCopy", picCopyConst)

end DefineGeneratedConstants
