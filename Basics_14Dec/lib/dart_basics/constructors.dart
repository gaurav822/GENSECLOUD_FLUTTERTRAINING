void main(){
// A a = A(greeting:"Good evening");
// a.display();
  Rectangle rect= Rectangle(
    length: 30,width: 10
  );
  rect.displayArea();

}

class A{

  B b;

  A({String greeting}){
    // print(greeting);
    // B b= B(greeting);
    // b.display();
    b= B(greeting);

  }

  display(){
    b.display();
  }
}

class B{

  String greeting;

  B(String argument){
    greeting=argument;
  }

  void display(){
    print(greeting + "from display of class B");
  }
}


class Rectangle{

  double length,width;

  // Rectangle({double length,double width}){
  //   this.length=length;    // this means reference to class
  //   this.width=width;
  // }

  Rectangle({this.length,this.width});  // same as above

  displayArea(){
    print(length*width);
  }

}

