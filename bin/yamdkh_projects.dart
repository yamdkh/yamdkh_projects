import '../util/api_keys.dart';
import 'package:encrypt/encrypt.dart';

void main() {

  // this will maintain all loans information
  Newspaper printMedia =  Newspaper();
  Internet onlineMedia =  Internet();

  Loan personalLoan =  Loan("Personal Loan", 12, "Standard Charterd");

  personalLoan.registerObserver(printMedia);
  personalLoan.registerObserver(onlineMedia);
  personalLoan.setInterest(10);


}

abstract class Observer {
  void update(int interest);
}

abstract class Subject {
  void registerObserver(Observer observer);

  void removeObserver(Observer observer);

  void notifyObservers();
}

class Loan implements Subject {
  List<Observer> observers = <Observer>[];
  String type;
  int interest;
  String bank;

  Loan(this.type, this.interest, this.bank);

  getInterest() {
    return interest;
  }

  void setInterest(int interest) {
    this.interest = interest;
    notifyObservers();
  }

  getBank() {
    return bank;
  }

  getType() {
    return type;
  }

  @override
  void registerObserver(Observer observer) {
    observers.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    observers.remove(observer);
  }

  @override
  void notifyObservers() {
    for (Observer ob in observers) {
      print("Notifying Observers on change in Loan interest rate");
      ob.update(interest);
    }
  }
}

class Newspaper implements Observer {
  @override
  void update(int interest) {
    print("Newspaper: Interest Rate updated, new Rate is:$interest");
  }
}

class Internet implements Observer {
  @override
  void update(int interest) {
    print("Internet: Interest Rate updated, new Rate is: $interest");
  }
}
