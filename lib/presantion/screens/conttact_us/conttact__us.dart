import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/conttact_us/contact%20lost.dart';

class ConttactUs extends StatelessWidget {
  const ConttactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0XFF232334),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                child: Text(
                  "      Contact Us",
                  style: TextStyle(
                    color: Color(0XFFC8C5CE),
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              Positioned(
                  top: 60,
                  left: 15,
                  child: Image.asset(
                      "assets/images/facebook-app-symbol 1 (1).png")),
              Positioned(
                  top: 65,
                  left: 50,
                  child: Text(
                    " 01234572284",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                      color: Color(0XFFC8C5CE),
                    ),
                  )),
              Positioned(
                  top: 115,
                  left: 10,
                  child: Icon(
                    Icons.facebook_sharp,
                    color: Color(0XFF509BE1),
                    size: 75,
                  )),
              Positioned(
                top: 115,
                left: 80,
                child: Image.asset(
                  "assets/images/instagram 1 (1).png",
                  width: 75,
                  height: 75,
                ),
              ),
              Positioned(
                  right: 12,
                  top: 60,
                  child: Image.asset(
                      "assets/images/undraw_Emails_re_cqen-removebg-preview 1.png")),
              Stack(
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.height / 3.5,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Image.asset(
                      "assets/images/Rectangle 14.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


    // Positioned(
              //     bottom: 0,
              //     child: Image.asset(
              //       "assets/images/Rectangle 14.png",
              //       fit: BoxFit.fill,
              //     )),
              // Positioned(
              //   top: 30,
              //   right: 20,
              //   child: Image.asset(
              //     "assets/images/undraw_Emails_re_cqen-removebg-preview 1.png",
              //     width: 150,
              //     height: 150,
              //   ),
              // ),
              // Stack(
              //   children: [
              //     Padding(
              //       padding: EdgeInsets.only(left: 50),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           SizedBox(
              //             height: 120,
              //           ),
              //           Text(
              //             "  First name",
              //             style: TextStyle(
              //               fontSize: 16,
              //               color: Color(0XFF151528),
              //               fontWeight: FontWeight.w300,
              //             ),
              //           ),
              //           SizedBox(
              //             height: 5,
              //           ),
              //           SizedBox(
              //             width: 275,
              //             child: Textf(),
              //           ),
              //           SizedBox(
              //             height: 5,
              //           ),
              //           Text(
              //             "  Last name",
              //             style: TextStyle(
              //               fontSize: 16,
              //               color: Color(0XFF151528),
              //               fontWeight: FontWeight.w300,
              //             ),
              //           ),
              //           SizedBox(
              //             height: 5,
              //           ),
              //           SizedBox(
              //             width: 275,
              //             child: Textf(),
              //           ),
              //           SizedBox(
              //             height: 5,
              //           ),
              //           Text(
              //             "  Phone",
              //             style: TextStyle(
              //               fontSize: 16,
              //               color: Color(0XFF151528),
              //               fontWeight: FontWeight.w300,
              //             ),
              //           ),
              //           SizedBox(
              //             height: 5,
              //           ),
              //           SizedBox(
              //             width: 275,
              //             child: Textf(),
              //           ),
              //           SizedBox(
              //             height: 5,
              //           ),
              //           Text(
              //             "  Message",
              //             style: TextStyle(
              //               fontSize: 16,
              //               color: Color(0XFF151528),
              //               fontWeight: FontWeight.w300,
              //             ),
              //           ),
              //           SizedBox(
              //             height: 5,
              //           ),
              //           SizedBox(
              //             width: 275,
              //             child: TextFormField(
              //               maxLines: 5,
              //               style: TextStyle(
              //                 fontSize: 10,
              //                 fontFamily: 'Inter',
              //                 color: Color(0XFFBDBBBB),
              //               ),
              //               cursorColor: Color(0XFF509BE1),
              //               decoration: InputDecoration(
              //                 enabledBorder: OutlineInputBorder(
              //                   borderSide: BorderSide(
              //                       color: Color(0XFF509BE1), width: 0.5),
              //                   borderRadius: BorderRadius.circular(17),
              //                 ),
              //                 filled: true,
              //                 fillColor: Color(0XFF232334),
              //                 border: OutlineInputBorder(),
              //                 hintText: "   type here",
              //                 hintStyle: TextStyle(
              //                   color: Color(0XFFBDBBBB),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     Positioned(
              //       bottom: 12,
              //       left: 125,
              //       child: Text(
              //         'Send',
              //         style: TextStyle(
              //           fontSize: 20,
              //           fontWeight: FontWeight.w300,
              //           color: Colors.white,
              //         ),
              //       ),
              //     )
              //   ],
              // ),