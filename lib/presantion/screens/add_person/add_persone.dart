import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/add_person/form_add_person.dart';
import 'package:graduationproject/presantion/screens/add_person/upluod_image_widget.dart';

class AddPersone extends StatelessWidget {
  const AddPersone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Positioned(
            child: Stack(
              children: [
                Image.asset("assets/images/colloer1.png"),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Row(
                    children: [
                      Text(
                        "Have you see me  ",
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Image.asset("assets/images/question 1.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Stack(
              children: [
                Positioned(
                    top: 40.h,
                    right: 0,
                    left: MediaQuery.of(context).size.width / 2.1,
                    child: Image.asset(
                      "assets/images/colloer2.png",
                      fit: BoxFit.fill,
                      width: 100,
                      height: 250,
                    )),
                Positioned(
                  top: 90.h,
                  left: MediaQuery.of(context).size.width / 2.9,
                  child: Container(
                    height: 163.h,
                    width: 140.w,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 3, 7, 27),
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        uploadimage(),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Add Images",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Stack(
              children: [
                Positioned(
                    top: 156.h,
                    right: 0,
                    left: 0,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Image.asset(
                            "assets/images/Rectangle 27.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 115.h),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/recruitment 1.png",
                                  fit: BoxFit.fill,
                                ),
                                Image.asset(
                                  "assets/images/undraw1.png",
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          ]),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2.1,
              ),
              child: SingleChildScrollView(
                  physics: ScrollPhysics(), child: FormAddPersone()),
            ),
          )
        ]),
      ),
    );
  }
}

// Positioned(
//   top: 60.h,
//   left: MediaQuery.of(context).size.width / 3,
//   child: Container(
//     decoration: BoxDecoration(
//         color: Color.fromARGB(255, 3, 7, 27),
//         borderRadius: BorderRadius.circular(20)),
//     height: 130.h,
//     width: 140.w,
//     child: Column(
//       children: [
//         SizedBox(
//           height: 5,
//         ),
//         uploadimage(),
//         SizedBox(
//           height: 5,
//         ),
//         Text(
//           "Add Images ",
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.white,
//           ),
//         ),
//       ],
//     ),
//   ),
// )
//],
//  ),
//),
