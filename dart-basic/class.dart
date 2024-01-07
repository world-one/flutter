void main() {
  // new를 붙일 순 있지만 꼭 붙일 필요는 없다.
  // var player = Player();
  // print(player.name);
  // final을 사용해서 에러 발생
  // player.name = 'world';
  // print(player.name);

  // player.sayHello();

  var player2 = Player2('world-one', 2800);

  var player4 = Player4(
    name: 'wo',
    xp: 233,
  );

  var apiData = [
    {
      'name': 'world',
      'team': Team.blue,
      'xp': 0,
    },
    {
      'name': 'world',
      'team': 'blue',
      'xp': 0,
    },
    {
      'name': 'world',
      'team': 'blue',
      'xp': 0,
    }
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });

  //Cascade Notation
  var p = Player5(name: 'name', xp: 123, team: 'red', age: 12)
    ..team = 'blue'
    ..xp = 0;

  var pp = p
    ..sayHello()
    ..age = 0;
}

enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

class Player extends Human {
  final String name;
  int xp;
  Team team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print('my name is $name');
  }

  void walk() {}
}

// class Player {
//   final String name = 'wo';
//   int xp = 1500;

//   void sayHello() {
//     // this.name으로 사용할 수 있으나 class method내에서의 this는 사용하지 않는 것으로 권장
//     // variable과 겹치는게 아니라면 그냥 쓰기
//     print('my name is $name');
//   }
// }

class Player2 {
  late final String name;
  late int xp;

// constructors
  Player2(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }

  void sayHello() {
    print('my name is $name');
  }
}

class Player3 {
  final String name;
  int xp;

// constructors
  Player3(this.name, this.xp);

  void sayHello() {
    print('my name is $name');
  }
}

//Named construcrot parameters
class Player4 {
  final String name;
  int xp;

// constructors
  Player4({
    required this.name,
    required this.xp,
  });

  void sayHello() {
    print('my name is $name');
  }
}

//Named Constructors
class Player5 {
  final String name;
  String team;
  int xp, age;

// constructors
  Player5({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  Player5.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;
  // : 객체를 초기화하겠다.

  Player5.createRedPlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print('my name is $name');
  }
}

// Abstract Classes
abstract class Human {
  void walk();
}
