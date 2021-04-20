void main (){
  // prime numbers have only two factors
  // the number itself and one(1)
  // numbers with more than two factors are composite
int num = 2;
int factors = 0;
for (int i = 1; i<=num; i++){
  if (num % i == 0){
    factors++;
  }
}
if (factors <= 2){
  print("$num is a primeNumber");
  }else{
  print("$num is not a primeNumber");
 }
}
