echo "Give me your word "
var word: string = readLine(stdin)

var reverse: string = ""

for i in countdown(len(word)-1,0):
 reverse.add(word[i])

echo("Reverse word is ", reverse)