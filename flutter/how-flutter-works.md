### How Flutter Works
native framework와 달리 OS와 직접적으로 소통하지 않는다.
엔진: C/C++로 짜여진 flutter 엔진이 화면에 그려준다.
엔진을 사용하기 때문에 플랫폿의 Native widget을 사용하지 않는다.


OS는 엔진을 동작시키기만 한다.
1. 엔진을 애플리케이션 내부에 넣고
2. 우리가 짠 코드를 컴파일
3. 유저가 실행시킬때
4. 엔진을 가동시키는 runner(Embedder) 프로젝트 실행
5. 엔진이 UI를 그려준다.


### Flutter vs React Native
- RN은 javascript를 통해 OS와 소통하고 OS가 직접 widget을 그려준다.
- 정교한 디자인, OS의 스타일과 상관없는 앱을 만들때는 Flutter가 더 적합하다.