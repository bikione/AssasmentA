import sys

def printOrder(inputNum):
  
      numb = 1
      numbRev = 1
      multip = 10
      print(1)
      for i in range(1,inputNum):
          if(i > 8): 
              break
          numb = numb*10 + i+1;
          numbRev = (i+1)*multip + numbRev
          multip = multip * 10
          print(numb, int(numbRev%(multip/10)), sep="")
try:
  inputNum = int(sys.argv[1])
except:
  inputNum = 9
  
if(inputNum > 0):
  printOrder(inputNum)
else:
  print("0")



