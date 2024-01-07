void main() {
  // 변수 선언 방식, 둘 다 같다. 나중에 수정 가능
  // dart 스타일 가이드에서는 var 사용을 권장
  // 타입은 클래스의 프로퍼티 작성시 사용
  // 메소드나 지역 변수에서는 var를 사용(컴파일러가 변수 타입을 추론)
  int id = 1;
  var id2 = 'id2';

  final name = 'seil';

  dynamic name2;
  name2 = 2;
  name2 = 'seil';
  if (name2 is String) {}

  //컴파일전부터 알고 있는 값, 런타임중 만들어지는 값은 아니다.
  const SECRET_KEY = 'asdfasdfds';

  //nullable
  String? name4 = 'seil';
  name4 = null;
  name4?.isEmpty;

  late var t1;
  late final t2;
  late int t3;
}
