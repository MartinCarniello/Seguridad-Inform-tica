require "rubyscript2exe"
exit if RUBYSCRIPT2EXE.is_compiling?
codigo_fuente = "\nputs \"codigo_fuente = \" + codigo_fuente.inspect + codigo_fuente"
puts "codigo_fuente = " + codigo_fuente.inspect + codigo_fuente
