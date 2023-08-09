import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.end, //Column에서 가로로 정렬 하는 방법
                        children: [
                          const Text(
                            "Hey,Selena",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            "Welcome back",
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
                    'Total Balnce',
                    style: TextStyle(
                        fontSize: 22, color: Colors.white.withOpacity(0.8)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$5 194 482',
                    style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.w600,
                        color: Colors.white.withOpacity(0.8)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    //Row에서 두 가지 이상의 요소를 벌리는 것
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        text: "Transfer",
                        bgColor: Color(0xFFF1B33B),
                        textColor: Colors.black,
                      ),
                      Button(
                        text: "Request",
                        bgColor: Color(0xFF1F2123),
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
                      const Text('Wallets',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                          )),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: "Euro",
                    code: "EUR",
                    amount: '6 427',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    x_: 0,
                    y_: 0,
                  ),
                  const CurrencyCard(
                    name: "Dollar",
                    code: "USD",
                    amount: '428',
                    icon: Icons.attach_money_outlined,
                    isInverted: true,
                    x_: 0,
                    y_: -20,
                  ),
                  const CurrencyCard(
                    name: "Bitcoin",
                    code: "BTC",
                    amount: '233',
                    icon: Icons.currency_bitcoin,
                    isInverted: false,
                    x_: 0,
                    y_: -40,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
