void main(){
  // List myList= [11,22,33,44];

  // print(myList[3]);

  // print(myList);

//  print(myList.length);

List myList= List();

const ages=[12,15,17];

myList=[11,22,33];

myList.add(44);
// print(myList.length);
myList.addAll(ages);
// print(myList);

// print(myList.indexOf(22));
// print(myList.elementAt(4));

// for(int i in myList) print(i);


// for(int i=0;i<10;i++){
//   print(i);
// }

int j=10;

// while(j>5){
//   print(j);
//   j--;
//   }


// for(var each in ages) print(each);


List<int> intList=[100,200,300];

// intList.add(200.5); not possible
intList.add(400);

List<double> doubleList=[1.5,2.5,3.5];

doubleList.add(100); //it takes int coz integer is itself double

List<String> stringList=["ktm","pokhara","chitwan"];
stringList.add("birat");


//Nested List

List nestedList= List();
nestedList.add(stringList);
nestedList.add(stringList);
nestedList.add(intList);
nestedList.add(doubleList);
nestedList.add("hello");

// print(nestedList);

List<List<String>> nestedStringList = List();
nestedStringList.add(stringList);
// nestedStringList.add(doubleList); this is not possible since doubeList is List of type double

print(nestedStringList);






}