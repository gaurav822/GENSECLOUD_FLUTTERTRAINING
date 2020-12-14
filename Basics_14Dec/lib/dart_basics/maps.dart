void main(){

  Map myMap = {"id":"101","name":"Gaurav"};

  // print(myMap);

  // print(myMap["id"]);
  // print(myMap["name"]); each value can be accessed through key

  myMap["address"]="ktm"; //adding new element in map

                          //if already exists then it will update its value

  myMap["address"]="pokhara";

  // print(myMap);

  print(myMap.containsKey("id"));  //containsKey returns boolean value
  // print(myMap.containsKey("gender")); returns false since gender key not existing

  myMap.remove("address");  //removing element using keyvalue
  // print(myMap);

  // myMap.addAll(anothermap);

  // In map both key and value can have data type

  Map<String, String> fixedTypeMap = {"name":"John","age":"29"}; // both key and value has same type

   Map<String, dynamic> dynamicMap = {"name":"John","age":29};

   Map<String,dynamic> userInfo ={
     "name":"john",
     "address" :[12,13,14]
   };



}