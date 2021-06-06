import 'package:flutter/material.dart';

class Exponential extends StatelessWidget {
  String period;
  String value;
  String type;
  bool buy;
  Exponential(
      {required this.period,
      required this.value,
      required this.type,
      required this.buy});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            period,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          Text(
            type,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: buy ? Color(0xFFFF2E50) : Color(0xFF007AFF),
            ),
          ),
        ],
      ),
    );
  }
}
