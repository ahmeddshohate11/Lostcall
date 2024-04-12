// import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
// import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
// import 'package:flutter/material.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   get onPressed => null;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0xfff9B9B9B),
//         bottomNavigationBar: CurvedNavigationBar(
//           backgroundColor: Color(0xfff9B9B9B),
//           items: [
//             CurvedNavigationBarItem(
//               child: Icon(Icons.home_outlined),
//             ),
//             CurvedNavigationBarItem(
//               child: Icon(Icons.person),
//             ),
//             CurvedNavigationBarItem(
//               child: Icon(Icons.info_outline),
//             ),
//           ],
//           onTap: (Indexed) {
//             // Handle button tap
//           },
//         ),
//         body: Stack(
//           children: [
//             Container(
//               height: 230,
//               color: Color(0xfff151528),
//             ),
//             Stack(
//               children: [
//                 Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       CircleAvatar(
//                         backgroundColor: Colors.white,
//                         radius: 68,
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       Text(
//                         'User Name',
//                         style: TextStyle(color: Colors.white, fontSize: 20),
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       Container(
//                         height: 450,
//                         width: 300,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.all(Radius.circular(15.0)),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(20),
//                           child: Column(
//                             children: [
//                               SizedBox(
//                                 height: 30,
//                               ),
//                               Row(
//                                 children: [
//                                   Image.asset('assets/pen 7.png'),
//                                   Text(
//                                     ' Edit Profile Name',
//                                     style: TextStyle(
//                                       fontSize: 22.5,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                  Spacer(flex: 1,),
//                                   GestureDetector(
//                                     onTap: () {
//                                       Navigator.pushNamed(context, "/login");
//                                     },
//                                     child: Image.asset('assets/next 3.png'),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 30,
//                               ),
//                               Row(
//                                 children: [
//                                   Image.asset('assets/email 4.png'),
//                                   Text(
//                                     ' Change Email ',
//                                     style: TextStyle(
//                                       fontSize: 22.5,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                   Spacer(flex: 1,),
//                                   GestureDetector(
//                                     onTap: () {
//                                       Navigator.pushNamed(context, "/login");
//                                     },
//                                     child: Image.asset('assets/next 3.png'),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 30,
//                               ),
//                               Row(
//                                 children: [
//                                   Image.asset('assets/padlock 2.png'),
//                                   Text(
//                                     ' Change Password',
//                                     style: TextStyle(
//                                       fontSize: 22.5,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                   Spacer(flex: 1,),
//                                   GestureDetector(
//                                     onTap: () {
//                                       Navigator.pushNamed(context, "/login");
//                                     },
//                                     child: Image.asset('assets/next 3.png'),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 30,
//                               ),
//                               Row(
//                                 children: [
//                                   Image.asset('assets/view 1.png'),
//                                   Text(
//                                     ' Show Your Adds',
//                                     style: TextStyle(
//                                       fontSize: 22.5,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                   Spacer(flex: 1,),
//                                   GestureDetector(
//                                     onTap: () {
//                                       Navigator.pushNamed(context, "/login");
//                                     },
//                                     child: Image.asset('assets/next 3.png'),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 30,
//                               ),
//                               Row(
//                                 children: [
//                                   Image.asset('assets/view 1.png'),
//                                   Text(
//                                     ' Show Your Losts',
//                                     style: TextStyle(
//                                       fontSize: 22.5,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                   Spacer(flex: 1,),
//                                   GestureDetector(
//                                     onTap: () {
//                                       Navigator.pushNamed(context, "/login");
//                                     },
//                                     child: Image.asset('assets/next 3.png'),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 30,
//                               ),
//                               Row(
//                                 children: [
//                                   Image.asset('assets/log-out 1.png'),
//                                   Text(
//                                     ' Log Out',
//                                     style: TextStyle(
//                                       fontSize: 22.5,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.red,
//                                     ),
//                                   ),
//                                   Spacer(flex: 1,),
//                                   GestureDetector(
//                                     onTap: () {
//                                       Navigator.pushNamed(context, "/login");
//                                     },
//                                     child:
//                                         Image.asset('assets/right-arrow 1.png'),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
