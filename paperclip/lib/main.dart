import 'package:flutter/material.dart';
import 'package:paperclip/button1.dart';
import 'package:paperclip/exponential.dart';
import 'package:paperclip/oscillator.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'IBMPlexSans'),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
                24, MediaQuery.of(context).size.height * 0.0175, 190, 0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 48,
                ),
                Text('USD/INR',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  color: Color(0xFF121212),
                ),
                height: 40.0,
                width: MediaQuery.of(context).size.width * 0.9112,
                child: DropdownButton(
                  isExpanded: true,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  hint: Text(
                    'Technical Indicators',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  items: [],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 38,
          ),
          Center(
            child: Text(
              'Summary',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 38,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 42.5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    ButtonTime(text: '1 MIN', color: Colors.white),
                    SizedBox(
                      height: 7,
                    ),
                    ButtonTime(text: '5 MIN', color: Colors.white70),
                    SizedBox(
                      height: 7,
                    ),
                    ButtonTime(text: '15 MIN', color: Colors.white70),
                    SizedBox(
                      height: 7,
                    ),
                    ButtonTime(text: '30 MIN', color: Colors.white70),
                    SizedBox(
                      height: 7,
                    ),
                    ButtonTime(text: '1 HR', color: Colors.white70),
                    SizedBox(
                      height: 7,
                    ),
                    ButtonTime(text: '5 HR', color: Colors.white70),
                    SizedBox(
                      height: 7,
                    ),
                    ButtonTime(text: '1 DAY', color: Colors.white70),
                    SizedBox(
                      height: 7,
                    ),
                    ButtonTime(text: '1 WK', color: Colors.white70),
                    SizedBox(
                      height: 7,
                    ),
                    ButtonTime(text: '1 MON', color: Colors.white70),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 48.5,
          ),
          Center(
            child: Text(
              'Moving Averages',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 36,
          ),
          Center(
            child: SizedBox(
              width: 48,
              height: 28,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'BUY',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1241,
              ),
              Column(children: [
                Text(
                  '7',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Buy',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white70,
                  ),
                ),
              ]),
              Column(
                children: [
                  Text(
                    '_',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Neutral',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '5',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Sell',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1241,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              height: 36,
              width: 118,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                color: Color(0xFF121212),
              ),
              child: DropdownButton(
                isExpanded: true,
                items: [],
                hint: Text(
                  'Exponential',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                icon: Icon(Icons.keyboard_arrow_down),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Container(
              height: 28,
              decoration: BoxDecoration(
                  color: Color(0xFF121212),
                  border: Border.all(
                    color: Color(0xFF121212),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Period',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    'Value',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    'Type',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Exponential(period: 'MA10', value: '465.28', type: 'SELL', buy: true),
          SizedBox(
            height: 22,
          ),
          Exponential(period: 'MA20', value: '465.28', type: 'SELL', buy: true),
          SizedBox(
            height: 22,
          ),
          Exponential(period: 'MA30', value: '465.28', type: 'BUY', buy: false),
          SizedBox(
            height: 22,
          ),
          Exponential(period: 'MA50', value: '465.28', type: 'BUY', buy: false),
          SizedBox(
            height: 22,
          ),
          Exponential(
              period: 'MA100', value: '465.28', type: 'SELL', buy: true),
          SizedBox(
            height: 22,
          ),
          Exponential(
              period: 'MA200', value: '465.28', type: 'BUY', buy: false),
          SizedBox(
            height: 47,
          ),
          Center(
            child: Text(
              'Oscillators',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: SizedBox(
              height: 28,
              width: 88,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFFFF2E50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: Color(0xFFFF2E50)),
                    ),
                  ),
                ),
                child: Text(
                  'STRONG SELL',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1241,
              ),
              Column(children: [
                Text(
                  '1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Buy',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white70,
                  ),
                ),
              ]),
              Column(
                children: [
                  Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Neutral',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '9',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Sell',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1241,
              ),
            ],
          ),
          SizedBox(
            height: 23,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Container(
              height: 28,
              decoration: BoxDecoration(
                  color: Color(0xFF121212),
                  border: Border.all(
                    color: Color(0xFF121212),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    'Value',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    'Action',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Column(
            children: [
              Oscillator(
                  name: 'RSI (14)',
                  val: '-53.6549',
                  action: 'NEUTRAL',
                  color: Color(0xFFFFB946)),
              SizedBox(
                height: 27,
              ),
              Oscillator(
                  name: 'CCI(20)',
                  val: '-53.6549',
                  action: 'SELL',
                  color: Color(0xFFFF2E50)),
              SizedBox(
                height: 27,
              ),
              Oscillator(
                  name: 'ADI(14)',
                  val: '-53.6549',
                  action: 'BUY',
                  color: Color(0xFF007AFF)),
              SizedBox(
                height: 27,
              ),
              Oscillator(
                  name: 'Awsome Oscillator',
                  val: '-53.6549',
                  action: 'SELL',
                  color: Color(0xFFFF2E50)),
              SizedBox(
                height: 27,
              ),
              Oscillator(
                  name: 'Momentum (10)',
                  val: '-53.6549',
                  action: 'SELL',
                  color: Color(0xFFFF2E50)),
              SizedBox(
                height: 27,
              ),
              Oscillator(
                  name: 'Stochastic RSI Fast (3, 3, 14, 14)',
                  val: '-53.6549',
                  action: 'SELL',
                  color: Color(0xFFFF2E50)),
              SizedBox(
                height: 27,
              ),
              Oscillator(
                  name: 'William 5R (14)',
                  val: '-53.6549',
                  action: 'SELL',
                  color: Color(0xFFFF2E50)),
              SizedBox(
                height: 27,
              ),
              Oscillator(
                  name: 'Bull Bear Power',
                  val: '-53.6549',
                  action: 'SELL',
                  color: Color(0xFFFF2E50)),
              SizedBox(
                height: 27,
              ),
              Oscillator(
                  name: 'Ultimate Oscillator (7, 14, 28)',
                  val: '-53.6549',
                  action: 'LESS VOLATILE',
                  color: Colors.white70),
            ],
          ),
          SizedBox(
            height: 47,
          ),
          Center(
            child: Text(
              'Pivot Points',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 29,
          ),
          Center(
            child: Container(
              height: 36,
              width: 118,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                color: Color(0xFF121212),
              ),
              child: DropdownButton(
                isExpanded: true,
                items: [],
                hint: Text(
                  'Classic',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                icon: Icon(Icons.keyboard_arrow_down),
              ),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'S3',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'S2',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'S1',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Pivot Points',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'R1',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'R2',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'R3',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 24, 0),
                child: Column(
                  children: [
                    Text(
                      '456.87',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '456.87',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '456.87',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '456.87',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '456.87',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '456.87',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '456.87',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
