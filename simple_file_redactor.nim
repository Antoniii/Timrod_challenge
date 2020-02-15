import streams

echo "filename? "
var file = readLine(stdin)

echo "read or write (r or w)? "
var arg = readLine(stdin)

if arg == "r":
 var strm = newFileStream(file, fmRead)
 var line = ""

 if not isNil(strm):
  while strm.readLine(line):
   echo line
  strm.close()

elif arg == "w":
 var strm = newFileStream(file, fmWrite)
 var line = ""
 echo "Print the first line: "
 var first_line = readLine(stdin)
 echo "Print the second line: "
 var second_line = readLine(stdin)

 if not isNil(strm):
  strm.writeLine(first_line)
  strm.writeLine(second_line)
  strm.close()

else:
 echo "Error 404"