abstract class Drink {
  String content();
  int sugarLevel();
  bool hotWater();
}

class TeaBoy<T extends Drink> {
  void _addContentToGlass(T t) {
    print("Drink Type: ${t.content()}");
  }
  void _isHotWater(T t) {
    print("isHotWater: ${t.hotWater()}");
  }
  void _addSugarLevel(T t) {
    print("SugarLevel: ${t.sugarLevel()}");
  }
  void make(T t) {
    _addContentToGlass(t);
    _isHotWater(t);
    _addSugarLevel(t);

    print("---------------\n");
  }
}



 class Coffee extends Drink {
   @override
   String content() => "Arabic Coffee";
   @override
   bool hotWater() => true;
   @override
   int sugarLevel() => 3;
 }

 class Tea extends Drink {
   @override
   String content() => "Tea";
   @override
   bool hotWater() => true;
   @override
   int sugarLevel() => 9;
 }




void main() {
  final teaBoy = TeaBoy<Drink>();
  final coffee = Coffee();
  final tea = Tea();

  teaBoy.make(coffee);
  teaBoy.make(tea);
}