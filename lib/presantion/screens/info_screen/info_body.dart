import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoBody extends StatefulWidget {
  const InfoBody({super.key});

  @override
  State<InfoBody> createState() => _InfoBodyState();
}

class _InfoBodyState extends State<InfoBody> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      bottom: 283,
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "We seek to expand the surveillance network",
                    // textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "to all countries                                                ",
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
