import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/add_person_cubit/cubit.dart';
import 'package:graduationproject/bloc/add_person_cubit/state.dart';
import 'package:graduationproject/bloc/cubit/findperson_cubit.dart';
import 'package:graduationproject/bloc/cubit/findperson_state.dart';
import 'package:graduationproject/bloc/login_cubit/login_cubit.dart';
import 'package:graduationproject/presantion/screens/Login_screen/login_page.dart';
import 'package:graduationproject/presantion/screens/add_person/costum_text_field.dart';

class FormfindPersone extends StatefulWidget {
  FormfindPersone({Key? key}) : super(key: key);

  @override
  State<FormfindPersone> createState() => _FormAddPersoneState();
}

class _FormAddPersoneState extends State<FormfindPersone> {
  final _globalelkey = GlobalKey<FormState>();
  bool iswrite = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddPersonCubit, AddPersonState>(
        listener: (context, state) {
      if (state is AddPersonsucsess) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("susccesssss")));
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => LoginScreen()));
      } else if (state is AddPersonfaliouer) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("errrorrrrrrrrr")));
      }
    }, builder: (context, state) {
      return SingleChildScrollView(
        child: Form(
          key: _globalelkey,
          child: Column(
            children: [
              Container(
                width: 300.w,
                height: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Color(0XFf232334),
                ),
                child: TextFormField(
                  validator: (value) {
                    // You can define validation rules for the input field.
                    if (value!.isEmpty) {
                      return 'Please Enter name lost person ';
                    }
                    return null; // Return null if the input is valid.
                  },
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white),
                  controller: context.read<AddPersonCubit>().nameController,
                  decoration: const InputDecoration(
                    prefixIcon:
                        Icon(Icons.person, color: Colors.blue, size: 40),
                    hintText: 'Enter name lost person ',
                    hintStyle: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    hoverColor: Colors.white,
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: const BorderSide(
                        color: Color(0XFF50C0E1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 300.w,
                height: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Color(0XFf232334),
                ),
                child: TextFormField(
                  validator: (value) {
                    // You can define validation rules for the input field.
                    if (value!.isEmpty) {
                      return 'Please Enter age for lost person ';
                    }
                    return null; // Return null if the input is valid.
                  },
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white),
                  controller: context.read<AddPersonCubit>().ageController,
                  decoration: const InputDecoration(
                    prefixIcon:
                        Icon(Icons.manage_search, color: Colors.blue, size: 40),
                    hintText: 'Enter age for lost person ',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    hoverColor: Colors.white,
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: const BorderSide(
                        color: Color(0XFF50C0E1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 300.w,
                height: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Color(0XFf232334),
                ),
                child: TextFormField(
                  validator: (value) {
                    // You can define validation rules for the input field.
                    if (value!.isEmpty) {
                      return 'Please Enter Address  lost person ';
                    }
                    return null; // Return null if the input is valid.
                  },
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white),
                  controller: context.read<AddPersonCubit>().addressController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.location_on_outlined,
                        color: Colors.blue, size: 40),
                    hintText: 'Enter Address  lost person ',
                    hintStyle: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white),
                    hoverColor: Colors.white,
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: const BorderSide(
                        color: Color(0XFF50C0E1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 300.w,
                height: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Color(0XFf232334),
                ),
                child: TextFormField(
                  validator: (value) {
                    // You can define validation rules for the input field.
                    if (value!.isEmpty) {
                      return 'Please Enter contact mail';
                    }
                    return null; // Return null if the input is valid.
                  },
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white),
                  controller: context.read<AddPersonCubit>().emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.blue, size: 40),
                    hintText: 'Enter contact mail',
                    hintStyle: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white),
                    hoverColor: Colors.white,
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: const BorderSide(
                        color: Color(0XFF50C0E1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 300.w,
                height: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Color(0XFf232334),
                ),
                child: TextFormField(
                  validator: (value) {
                    // You can define validation rules for the input field.
                    if (value!.isEmpty) {
                      return 'Please Enter contact phone';
                    }
                    return null; // Return null if the input is valid.
                  },
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white),
                  controller:
                      context.read<AddPersonCubit>().phonenumberController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone, color: Colors.blue, size: 40),
                    hintText: 'Enter contact phone',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                    hoverColor: Colors.white,
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: const BorderSide(
                        color: Color(0XFF50C0E1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                width: 156.w,
                child: state is AddPersonloaded
                    ? CircularProgressIndicator()
                    : MaterialButton(
                        onPressed: () {
                          context.read<AddPersonCubit>().uploadData(context
                              .read<AddPersonCubit>()
                              .imagespaths
                              .map((e) => e.path)
                              .toList());
                        },
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Color.fromARGB(255, 37, 224, 209),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Confirm ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
//  Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "Confirm infromation ",
//                                 style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 15.sp,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),