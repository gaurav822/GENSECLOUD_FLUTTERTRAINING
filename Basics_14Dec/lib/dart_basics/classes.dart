

class Students{

  static double rate=5.99;


  void display(){  //if _display then within Students class only
    print("Display from class students");
  }

  static bool init(){
    print("Initializing...");
    return true;
    rate=5.99;
    // _finish();
  }

  void _finish(){
    print("finished");
  }
}

void main(){
  // Students stud1= new Students();
  // stud1.display();
  // stud1.init();
  Students.init();
}