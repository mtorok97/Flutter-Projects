import 'package:ligretto/widgets/list_item.dart';

class User {
  String name = "";
  late int sum;
  List<int> score = List.filled(
      rowNum, 0); // ez így eggyel több elemű mint ami pont megjelenik

  User(this.name) {}

  void sumPoints() {
    int summa = 0;
    this.score.forEach((element) {
      summa += element;
    });
    this.sum = summa;
  }

}

class Players {
  static List<User> players = List.empty(growable: true);
}
