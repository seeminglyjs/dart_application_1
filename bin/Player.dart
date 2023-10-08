import 'team.dart';

abstract class Human {
  void walk();
}


class Player extends Human {
  String name ;
  int xp ;
  Team team;
  int age;

  Player({required this.name, required this.xp, required this.team, required this.age});

  void satHello() => print(" i am ${this.name} and my xp is ${this.xp}" );
  
  @override
  void walk() {
    print("${this.name} Player is walking");
  }
}

mixin Strong {
  final int power = 1191919;
}

mixin Run {
  void runnn() {
    print("rummmmmmm!!!!!");
  }
}

class Player2 with Strong, Run {
  // Player2 클래스에서 추가적인 멤버나 메서드를 정의할 수 있습니다.
}