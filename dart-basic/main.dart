//main은 엔트리 포인트
void main() {
  print('hello world');

  // 타입 추론
  var name = 'seil';
  // 변수 값 변경시 동일 타입이어야 한다.
  name = 'sale';

  String name2 = 'seil';

  //함수나 메소드 내부에 지역변수 선언시 var
  // class 변수나 property를 선언할 때는 타입 지정
  // dart 스타일 가이드 권장

  // 변수타입이 변하는 경우, 모르는 경우
  // 필요한 때만 사용
  var name3;
  name3 = 'seil';
  name3 = 1;
  dynamic name4;
  name4 = 'seil';
  name4 = 1;

  if (name4 is String) {
    print('string');
  }
}

// 다트에서는 일부러 세미콜론을 쓰지 않을 때가 있다. 그래서 포매터가 자동으로 달아주지 않음
