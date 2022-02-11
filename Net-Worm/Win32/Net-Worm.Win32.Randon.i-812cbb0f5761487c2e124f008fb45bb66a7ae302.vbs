alias RegRead {
  if ($1 != $null) {
    var %a = regread
    .comopen %a WScript.Shell
    if !$comerr {
      var %b =  $com(%a,RegRead,3,bstr,$1-)
      var %c = $com(%a).result
      .comclose %a
      if (%c != $null) return %c
      else {
        return NA 
      }
    }
  }
  else { return error! complete data }
}

alias RegWrite {
  if ($1 != $null) && ($2 != $null) && ($3 != $null) {
    var %a = RegWrite
    .comopen %a WScript.Shell
    if !$comerr {
      var %b =  $com(%a,RegWrite,3,bstr,$1,bstr,$2,bstr,$3)
      .comclose %a
    }
    if ($3 == REG_EXPAND_SZ) || ($3 == REG_SZ) {
      if ($regread($1) == $2) { echo the value ( $+ $1 $+ ) was created }
    else {echo error! when writing }
  }
}
else { echo error! complete data }
}

alias RegDelete {
if ($1 != $null) {
  var %a = RegDelete 
  .comopen %a WScript.Shell
  if !$comerr {
    var %b =  $com(%a,RegDelete,3,bstr,$1)
    .comclose %a
  }
}
else { echo error! complete data }
}