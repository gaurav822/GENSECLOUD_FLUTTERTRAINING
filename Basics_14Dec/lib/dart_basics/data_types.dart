void main(){

  int rollnumber=10;
  // print(rollnumber);

  double rate=2.5;

  String firstName="Gaurav's name";
  // print(firstName);
  firstName= 'Ram';
  // print(firstName);


  String price="99";

  int modifiedPrice=int.parse(price);

  // print(modifiedPrice);

  String newRate="2.5";

  double modifiednewRate=double.parse(newRate); //or double.parse("2.5");

  // print(modifiednewRate);

  String message="Rate has been changed to $rate";
  // print(message);

  String newMessage="Rate has been changed to ${rate+1}";
  // print(newMessage);

  var value="value";  //any type of data can be assigned using var
  
  print(value);

  final number=2; //final variable cannot be reassigned again

  const pi=3.14;  //fixed in compile time and it is also cannot be reassigned


  bool isEven=true;

  isEven=!isEven;

  print(isEven);



}