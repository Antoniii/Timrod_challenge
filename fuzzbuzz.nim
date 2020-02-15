echo "Hi! This is Fuzz fiking Buzz"

for i in countup(1,100):
 if (i mod 3 == 0) and (i mod 5 == 0):
  echo "FuzzBuzz"
 elif i mod 3 == 0:
  echo "Fuzz"
 elif i mod 5 == 0:
  echo "Buzz"
  