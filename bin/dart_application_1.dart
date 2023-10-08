import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

import 'Player.dart';
import 'play.dart';
import 'team.dart';

void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');
  print("sdsdsdsds");

  String name =
      "tedst"; // var name 이라고 작성하면 String으로 인식하고 타입추론 가능 name =1 로 사용하면 오류남

  dynamic abc;

  //다이나믹으로 설정하면 다양한 타입 값 할당 가능
  abc = "sdsd";
  abc = 1;

  if (abc is String) {
    //다이나믹은 진짜 필요할떄만 사용하자.
    abc.contains("other");
  }

  int a = 1;
  // a =  null; //null safty

  String? a1 = "adad";
  a1 = null; //타입에 ? 을 대입하면 null도 할당 가능

  final String a2 = "asdsd";
  print(a2);

  final String a3;
  //print(a3);
  a3 = "sdsd";
  late final String a4;
  //late는 변수의 선언을 나중으로 미룰 수 있게 해준다.

  const api = ""; // 콘스트는 컴파일 타임에 올려지는 데이터 타입이다. 동적값 할당은 안됨 빌드 전부터 알고 있는값

  num x = 1;
  x = 1.1; // num 타입은 int 또는 double 형을 대입할 수 있다.

  var giveMeFivce = true;
  List<int> numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    if (giveMeFivce) 5,
  ];
  numbers.add(6);
  print(numbers.first);
  print(numbers);

  var name3 = "sdsd";
  var age = 1;
  var hello = "hello my name is $name3, and i am ${age + 1} nice to meet you";
  print(hello);

  var oldFriends = ['aaa', 'nnnn'];
  var newFriends = [
    'cccc',
    'sdsdsd',
    for (var friend in oldFriends) "*** $friend ",
  ];

  print(newFriends);
  sayHello("sdsdsdsdsdsd");

  print(sayHello2(name: "sdsdsdsdsdsd", age: 99, country: "asdasd"));
  print(sayHello2(age: 99, country: "asdasd"));
  print(sayHello3(name: "arrow", age: 99, country: "asdasd"));
  print(sayHello4("arrow", 99, "sdsdsdsdsdsd"));

  print(reverseListOfNumbers([1,2,3,4,5,6,76,7]));

  var player1 = Player(name:"hello", xp:1414, age:999, team: Team.blud);
  print(player1.name);
  print(player1.xp);
  print(player1.team);
  player1.satHello();

  var player2 = Play.createBluePlater(name : "nadsd", age :14);
  print(player2.team);

  var player3 = Player(name: "sdsdsd", xp: 333, team: Team.red, age: 50)
  ..name = 'sdsdsd'
  ..xp = 343434
  ..team = Team.red;
  


}










void sayHello(String name) {
  var age = 1;
  var hello = "hello my name is $name, and i am ${age + 1} nice to meet you";
  print(hello);
}

String sayHello2(
        {String name = "empty", int age = 10, String country = "korea"}) =>
    "hello my name is $name, and i am ${age + 1} nice to meet you $country";
String sayHello3(
        {required String name, required int age, required String country}) =>
    "hello my name is $name, and i am ${age + 1} nice to meet you $country";

String sayHello4(String name, int age, [String? country = 'cuba']) =>
    "hello my name is $name, and i am ${age + 1} nice to meet you $country";

typedef ListOfInts = List<int>; //타임을 명시적으로 이름을 정해서 사용할 수 있다.

ListOfInts reverseListOfNumbers(ListOfInts list){
  return list.reversed.toList();
}