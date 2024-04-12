import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/profile/profile_screen.dart';

class UpdateProfilename extends StatelessWidget {
  const UpdateProfilename({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF151528),
        body: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height / 2.8,
              bottom: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                "assets/images/Rectangle 49.png",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 17,
              left: 16,
              child: Text(
                "     Update your name",
                style: TextStyle(
                    fontSize: 37,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
            Positioned(
                top: 80,
                left: 90,
                child: Image.asset(
                    "assets/images/undraw_Updates_re_o5af (1) 1.png")),
            Stack(
              children: [
                Positioned(
                    top: MediaQuery.of(context).size.height / 2.0,
                    left: MediaQuery.of(context).size.height / 14.8,
                    child: Image.asset("assets/images/Rectangle 50.png")),
                Positioned(
                    top: MediaQuery.of(context).size.height / 1.9,
                    left: MediaQuery.of(context).size.height / 5,
                    child: Image.asset("assets/images/pen 8.png")),
                // Positioned(
                //     top: MediaQuery.of(context).size.height / 1.6,
                //     left: MediaQuery.of(context).size.height / 5,
                //     child: TextField(
                //       decoration: InputDecoration(
                //           hintText: 'Enter new Password',
                //           hintStyle: TextStyle(color: Colors.white),
                //           border: OutlineInputBorder(
                //               borderRadius: BorderRadius.circular(25),
                //               borderSide: BorderSide(
                //                 color: Color.fromARGB(255, 228, 234, 236),
                //               ))),
                //     ))
                Positioned(
                  top: MediaQuery.of(context).size.height / 1.6,
                  left: MediaQuery.of(context).size.height / 9.5,
                  child: SingleChildScrollView(
                    child: Container(
                      width: 220.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0XFf232334),
                      ),
                      child: TextFormField(
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.person, color: Colors.blue, size: 30),
                          hintText: 'Enter new name ',
                          hintStyle: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Inter',
                            //     fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                          hoverColor: Colors.white,
                          labelStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 1.37,
                  left: MediaQuery.of(context).size.height / 6,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => LoginScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF509BE1),
                      elevation: 4,
                      fixedSize: Size(150, 48),
                    ),
                    child: Text(
                      'Update',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: MediaQuery.of(context).size.height / 16,
                    left: MediaQuery.of(context).size.height / 7,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileScreen()),
                          );
                        },
                        child: Image.asset("assets/images/back-button 1.png"))),
                Positioned(
                    bottom: MediaQuery.of(context).size.height / 16,
                    left: MediaQuery.of(context).size.height / 5,
                    child: Text(
                      "Back to profile",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'inter',
                          fontWeight: FontWeight.w700),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
