class Play{
  String name, team;
  int xp, age;

  Play({required this.name, required this.xp, required this.team, required this.age});

  Play.createBluePlater({
    required String name,
    required int age,

  }) : 
  this.age = age,
  this.name = name,
  this.team = "blue",
  this.xp = 0;

  void satHello() => print(" i am ${this.name} and my xp is ${this.xp}" );
}