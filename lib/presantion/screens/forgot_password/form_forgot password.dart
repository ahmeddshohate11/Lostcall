import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/login_cubit/login_cubit.dart';
import 'package:graduationproject/presantion/screens/user/user_screen.dart';

class FormForgotPassword extends StatefulWidget {
  FormForgotPassword({Key? key}) : super(key: key);

  @override
  State<FormForgotPassword> createState() => _FormForgotPasswordState();
}

final _globalekey = GlobalKey<FormState>();
bool _obscureText = true;

class _FormForgotPasswordState extends State<FormForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is Loginsucsess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(" التسجيل بنجاح")));
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => BottomNavBarscreen()));
        } else if (state is Loginfaliouer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errormassage)));
        }

        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          children: [
            Column(children: [
              Text(
                "      Enter your email and we will send you a link to       ",
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0x00000000ffE9E9E9),
                  fontFamily: 'Inter',
                  // fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "      reset your password       ",
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0x00000000ffE9E9E9),
                  fontFamily: 'Inter',
                  // fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 5.h),
              Form(
                  key: _globalekey,
                  child: Column(children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      textAlign: TextAlign.left,
                      "Email                             ",
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Color(0x00000000ffE9E9E9),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.7,
                      height: MediaQuery.of(context).size.width / 8,
                      child: TextFormField(
                        validator: (value) {
                          // You can define validation rules for the input field.
                          if (value!.isEmpty) {
                            return 'Please enter your Email';
                          }
                          return null; // Return null if the input is valid.
                        },
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: Colors.white),
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(_obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'Type here',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.7,
                      child: MaterialButton(
                        onPressed: () {
                          if (_globalekey.currentState!.validate()) {
                            context.read<LoginCubit>().login();
                          }
                        },
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Submit",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]))
            ]),
          ],
        );
      },
    );
  }
}
