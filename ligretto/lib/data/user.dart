class User {
  final String name;
  late int sum;
  //List<int> score = List.empty(growable: true);
  List<int> score = List.filled(30, 0);


  User(this.name) {
    //this.sum = 0;
  }

  //Private (lehetne)
  int sumPoints() {
    int summa = 0;
    this.score.forEach((element) {
      summa += element;
    });
    this.sum = summa;
    return summa;
  }

  //Public
  // void setPoints(int points) {
  //   this.score.add(points);
  //   this.sum = sumPoints();
  // }
}

class Players{
static List<User> players = List.empty(growable: true);
}