void main() {
  hello('world-one');
  print(sayHello('wo!!'));

  print(sayHello3(
    name: 'name',
    age: 33,
    country: 'korea',
  ));

  sayHello4(name: 'name', age: 123, country: 'country');

  capitalizeName(null);

  String? name_qq;
  name_qq ??= 'wo';

  print(resversListOfNumbers([
    1,
    3,
    4,
    5,
    56,
  ]));
}

void hello(String name) {
  print('hello $name');
}

String sayHello(String name) {
  return 'hello $name';
}

String sayHello2(String name) => 'hello $name';

// named argument
String sayHello3({
  String name = 'anony',
  int age = 999,
  String country = 'none',
}) {
  return 'hello $name $age $country';
}

String sayHello4({
  required String name,
  required int age,
  required String country,
}) {
  return 'hello $name $age $country';
}

//optional positional
String sayHello5(
  String name,
  int age, [
  String? country = 'none',
]) {
  return 'hello $name $age $country';
}

// QQ operator
String capitalizeName(String? name) => name?.toUpperCase() ?? 'none';

typedef ListOfInts = List<int>;
//type def
ListOfInts resversListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}
