void main() {
  String name = 'seil';
  bool alive = true;
  int age = 12;
  double money = 69.99;
  // dart의 대부분은 obdject로 이루어져있다.

  //num은 int,duoble의 부모 클래스이다.
  num x = 12;
  x = 1.2;

  // list
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];
  numbers.add(1);

  // collection if, collection for?

  //String interpolation
  var name_s = 'seil';
  var age2 = 20;
  var greeting = 'Hello, my name is $name_s and I`m ${age + age2}';

  print(greeting);

  // Collection For
  var oldF = ['seil', 'sale'];
  var newF = [
    's1',
    's2',
    's3',
    for (var f in oldF) '$f',
  ];

  print(newF);

  //Map
  //Javascript, Typescript의 object;

  var player = {
    'name': 'wo',
    'x': 19.99,
    'skil': true,
  };
  // dart의 object type은 any와 같다.

  Map<int, bool> player2 = {
    1: true,
    2: false,
    3: true,
  };

  Map<List<int>, bool> player3 = {
    [1, 4, 5]: true,
    [2, 3, 4]: false,
    [1, 2, 3]: true,
  };

  // key value 구조의 데이터를 생성할 때 class로 하는걸 추천(nico)

  //set
  var nums = {
    1,
    2,
    3,
    4,
    5,
  };
}
