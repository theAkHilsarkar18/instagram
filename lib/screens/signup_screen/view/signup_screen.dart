

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instagram/utils/SharedPreferenceClass/shared_preference_class.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {


  TextEditingController txtUserId = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            ListTile(
              trailing: InkWell(onTap: () {
                exit(0);
              },child: Icon(Icons.close_outlined,color: Colors.black,size: 30,)),),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                //mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/logo/namelogo.png",height: 200,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          width: 100,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "First Name",
                              hintStyle: TextStyle(color: Colors.grey.shade500,fontSize: 13),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey,width: 0.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey,width: 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 50,
                          width: 100,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Last Name",
                              hintStyle: TextStyle(color: Colors.grey.shade500,fontSize: 13),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey,width: 0.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey,width: 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    child: TextFormField(
                      controller: txtUserId,
                      decoration: InputDecoration(
                        hintText: "Phone number, username or email",
                        hintStyle: TextStyle(color: Colors.grey.shade500,fontSize: 13),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    child: TextFormField(
                      obscureText: true,
                      controller: txtPassword,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey.shade500,fontSize: 13),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    child: TextFormField(
                      obscureText: true,
                      controller: txtConfirmPassword,
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(color: Colors.grey.shade500,fontSize: 13),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  InkWell(
                    onTap:() {
                      String userId = txtUserId.text;
                      String password = txtPassword.text;
                      String confirmPassword = txtConfirmPassword.text;
                      SharedPreferenceClass spc = SharedPreferenceClass();
                      spc.createSharedPreference(userId, password,false);
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Text("Sign Up",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  SizedBox(height: 130,),
                  InkWell(
                    onTap: () {

                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have account ?",style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 5,),
                        Text("Sign In",style: TextStyle(color: Colors.blue.shade600,fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
