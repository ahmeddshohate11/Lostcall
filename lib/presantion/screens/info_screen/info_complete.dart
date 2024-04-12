import 'package:flutter/material.dart';

class Infocomplete extends StatelessWidget {
  const Infocomplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      bottom: 215,
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Image.asset(
                      "assets/images/Ellipse 24.png",
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    child: Image.asset(
                      "assets/images/Line 4.png",
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  Text(
                    "Find The Lost , SAVE The Day",
                    //  textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
