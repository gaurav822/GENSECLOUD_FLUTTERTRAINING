void main() async{
  print("before waiting");

  await Future.delayed(Duration(seconds: 5)).then((value) {
    print("after 5 seconds");
  });   //after 5 sec then will called

  print("last line of main");  // this will execute before Future it will not wait for 5 sec
}