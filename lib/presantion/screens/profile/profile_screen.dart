import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/update_profile_email/update_pro_email.dart';
import 'package:graduationproject/presantion/screens/update_profile_name/update_pro_name.dart';
import 'package:graduationproject/presantion/screens/update_profile_password/update_pro_password.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF151528),
        body: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height / 3.0,
              bottom: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                "assets/images/Rectangle 49.png",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.height / 6.5,
              top: MediaQuery.of(context).size.height / 17,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                child: Text(
                  "A",
                  style: TextStyle(
                      fontSize: 90,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.height / 7.4,
              top: MediaQuery.of(context).size.height / 4.5,
              child: Text(
                " Ahmed shehata",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            Stack(
              children: [
                Positioned(
                    top: MediaQuery.of(context).size.height / 5.5,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Image.asset("assets/images/Rectangle 48.png")),
                Positioned(
                  top: 280,
                  left: 70,
                  child: Row(
                    children: [
                      Image.asset("assets/images/pen 7.png"),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        ' Edit Profile Name',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UpdateProfilename()));
                        },
                        child: Image.asset("assets/images/next 3.png"),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 355,
                  left: 70,
                  child: Row(
                    children: [
                      Image.asset("assets/images/email 4.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        ' Change email  address',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UpdateProfileEmail()));
                        },
                        child: Image.asset("assets/images/next 2.png"),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 430,
                  left: 70,
                  child: Row(
                    children: [
                      Image.asset("assets/images/padlock 2.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        ' change password',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Updateprofilepassword()));
                        },
                        child: Image.asset("assets/images/next 3.png"),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 500,
                  left: 70,
                  child: Row(
                    children: [
                      Image.asset("assets/images/view 1.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        ' Show your adds  ',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset("assets/images/next 4.png"),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 575,
                  left: 70,
                  child: Row(
                    children: [
                      Image.asset("assets/images/view 1.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        ' Show your losts ',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset("assets/images/next 3.png"),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 660,
                  left: 70,
                  child: Row(
                    children: [
                      Image.asset("assets/images/log-out 1.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        ' Log out ',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 117,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset("assets/images/right-arrow 1.png"),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Scaffold(
//   body: Container(
//     color: Color(0XFF151528),
//     height: 300,
//     child: Stack(
//       children: [
//         Positioned(
//             top: MediaQuery.of(context).size.height / 4,
//             bottom: 0,
//             right: 0,
//             left: 0,
//             child: Image.asset("assets/images/Rectangle 49.png")),
//         Stack(
//           children: [
//             Positioned(
//                 top: MediaQuery.of(context).size.height / 4,
//                 bottom: 0,
//                 right: 0,
//                 left: 0,
//                 child: Image.asset("assets/images/Rectangle 49.png")),
//             Positioned(
//               left: MediaQuery.of(context).size.height / 6,
//               top: MediaQuery.of(context).size.height / 13,
//               child: CircleAvatar(
//                 backgroundColor: Colors.white,
//                 radius: 68,
//                 child: Text(
//                   "A",
//                   style: TextStyle(
//                       fontSize: 90,
//                       fontWeight: FontWeight.w900,
//                       color: Colors.black),
//                 ),
//               ),
//             ),
//             Positioned(
//               left: MediaQuery.of(context).size.height / 7,
//               top: MediaQuery.of(context).size.height / 4.2,
//               child: Text(
//                 "Ahmed shehata",
//                 style: TextStyle(fontSize: 30, color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ],
//     ),
//   ),
// );

//Scaffold(
//     backgroundColor: Color(0xfff9B9B9B),
//     body: Stack(
//       children: [
//         Container(
//           height: 230,
//           color: Color(0xfff151528),
//         ),
//         Stack(
//           children: [
//             Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   CircleAvatar(
//                     backgroundColor: Colors.white,
//                     radius: 68,
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Text(
//                     'User Name',
//                     style: TextStyle(color: Colors.white, fontSize: 20),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Container(
//                     height: 450,
//                     width: 300,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.all(Radius.circular(15.0)),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(20),
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Row(
//                             children: [
//                               Image.asset('assets/images/pen 7.png'),
//                               Text(
//                                 ' Edit Profile Name',
//                                 style: TextStyle(
//                                   fontSize: 22.5,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               Spacer(
//                                 flex: 1,
//                               ),
//                               GestureDetector(
//                                 // onTap: () {
//                                 //   Navigator.pushNamed(context, "/login");
//                                 // },
//                                 child:
//                                     Image.asset('assets/images/next 3.png'),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Row(
//                             children: [
//                               Image.asset('assets/images/email 4.png'),
//                               Text(
//                                 ' Change Email ',
//                                 style: TextStyle(
//                                   fontSize: 22.5,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               Spacer(
//                                 flex: 1,
//                               ),
//                               GestureDetector(
//                                 // onTap: () {
//                                 //   Navigator.pushNamed(context, "/login");
//                                 // },
//                                 child:
//                                     Image.asset('assets/images/ext 3.png'),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Row(
//                             children: [
//                               Image.asset('assets/images/padlock 2.png'),
//                               Text(
//                                 ' Change Password',
//                                 style: TextStyle(
//                                   fontSize: 22.5,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               Spacer(
//                                 flex: 1,
//                               ),
//                               GestureDetector(
//                                 // onTap: () {
//                                 //   Navigator.pushNamed(context, "/login");
//                                 // },
//                                 child:
//                                     Image.asset('assets/images/next 3.png'),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Row(
//                             children: [
//                               Image.asset('assets/images/view 1.png'),
//                               Text(
//                                 ' Show Your Adds',
//                                 style: TextStyle(
//                                   fontSize: 22.5,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               Spacer(
//                                 flex: 1,
//                               ),
//                               GestureDetector(
//                                 // onTap: () {
//                                 //   Navigator.pushNamed(context, "/login");
//                                 // },
//                                 child:
//                                     Image.asset('assets/images/next 3.png'),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Row(
//                             children: [
//                               Image.asset('assets/images/view 1.png'),
//                               Text(
//                                 ' Show Your Losts',
//                                 style: TextStyle(
//                                   fontSize: 22.5,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               Spacer(
//                                 flex: 1,
//                               ),
//                               GestureDetector(
//                                 // onTap: () {
//                                 //   Navigator.pushNamed(context, "/login");
//                                 // },
//                                 child:
//                                     Image.asset('assets/images/next 3.png'),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Row(
//                             children: [
//                               Image.asset('assets/images/log-out 1.png'),
//                               Text(
//                                 ' Log Out',
//                                 style: TextStyle(
//                                   fontSize: 22.5,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.red,
//                                 ),
//                               ),
//                               Spacer(
//                                 flex: 1,
//                               ),
//                               GestureDetector(
//                                 // onTap: () {
//                                 //   Navigator.pushNamed(context, "/login");
//                                 // },
//                                 child: Image.asset(
//                                     'assets/images/right-arrow 1.png'),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ],
//     ),
//   ),
// );
