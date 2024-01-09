import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

//Widget 타입
//레고 블록 같이 하나씩 합쳐서 앱을 구성
//공식 widget, 커뮤니티 widget

class App extends StatelessWidget {
  const App({super.key});

  //build method는 UI를 만들어준다.
  @override
  Widget build(BuildContext context) {
    //material 구글 디자인
    //Cupertino 애플 디자인
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'hey selena',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 38,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'welcom back',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(color: Colors.white.withOpacity(0.8)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '\$5 194 482',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        text: 'Transfer',
                        bgColor: Color(0xfff1b33b),
                        textColor: Colors.black,
                      ),
                      Button(
                        text: 'Request',
                        bgColor: Color(0xff1f2123),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: 'EURO',
                    code: 'EUR',
                    amount: '6 428',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    offset: Offset(0, 0),
                  ),
                  const CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '1',
                    icon: Icons.currency_bitcoin_rounded,
                    isInverted: true,
                    offset: Offset(0, -20),
                  ),
                  const CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '6 428',
                    icon: Icons.attach_money_rounded,
                    isInverted: false,
                    offset: Offset(0, -40),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
