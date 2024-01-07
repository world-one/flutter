void main() {
  //null safety라는건 변수, 데이터가 null이 될 수 있음을 명시할 수 있다.
  String? seil = 'seil';
  seil = null;

  if (seil != null) {}

  seil?.isNotEmpty;
}
