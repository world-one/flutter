void main() {
  // javascript의 const와 동일
  final String name = 'seil';
  // 알아서 타입을 추론하기 때문에 타입선언이 필수는 아니다.

  // 초기 데이터 없이 변수 선언
  late final name2;
  name2 = 2;
  print(name2);

  //dart의 const compiler time constant을 만들어준다.
  // 컴파일할 때 알 수 있는 값.
  const name3 = 'seil';
  const API = 'https://abc.co';
}
