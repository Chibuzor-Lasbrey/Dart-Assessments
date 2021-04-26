// A dart program that uses listed data for student data to calculate CGPA and CGPA percentage using set formulas
import 'dart:io';
//declaration of variables
var grade = [90, 80, 70, 80, 90];
int n = 5;
var total=0;

//app start point
void main(){
int sum = 0;
//summation of list
for (int e in grade) {
  sum += e;}
//formular for cgpa
double cgpa = sum/n;
double percentage = cgpa * 9.5;
print("cgpa is: $cgpa");
print('percentage is: $percentage');
}
