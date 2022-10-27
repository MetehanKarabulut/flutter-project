import 'dart:io';

void main() {
  String? operator;
  num? ilk;
  num? ikinci;

  print("İlk sayı:");
  String? gelen = stdin.readLineSync();
  if(gelen != null)
    ilk = num.tryParse(gelen);
  print("ikinci sayı:");
  String? gelen1 = stdin.readLineSync();
  if(gelen1 != null)
    ikinci = num.tryParse(gelen1);
  print("Hangi islemi yapmak istediginizi secin:(+,-,*,/)");
  operator = stdin.readLineSync();

  print("sonuc:");
  if(ilk != null && ikinci != null){
    switch(operator){
      case "+":
        print(ilk + ikinci);
        break;
      case "-":
        print(ilk-ikinci);
        break;
      case "*":
        print(ilk*ikinci);
        break;
      case "/":
        if(ikinci == 0) {
          print("Payda 0 olamaz degerleri yeniden girin:");
          dynamic gelen1 = stdin.readLineSync();
          ikinci = num.tryParse(gelen1);
        }
        if(ikinci != null)
          print(ilk/ikinci);
        break;
    }
  }
}
