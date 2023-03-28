import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instagram/utils/SharedPreferenceClass/shared_preference_class.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {

  TextEditingController txtUserId = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  Column(
                    children: [
                      Container(
                        height : 50,
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
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    child: TextFormField(
                      controller: txtPassword,
                      obscureText: true,
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
                  Row(
                    children: [
                      Spacer(),
                    Text("Forgot password ?",style: TextStyle(fontSize: 12,color: Colors.blue,fontWeight: FontWeight.w500),),
                      SizedBox(width: 5,),
                    ],
                  ),
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: () async {
                      String userId = txtUserId.text;
                      String password = txtPassword.text;
                      SharedPreferenceClass spc = SharedPreferenceClass();
                      Map m1 = await spc.readSharedPreference();
                      if(userId == m1['id1'] && password == m1['ps1'])
                      {
                        spc.createSharedPreference(userId, password,true);
                        Navigator.pushNamed(context, 'base');
                      }
                      else
                      {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Incorrect userid or password !",style: TextStyle(color: Colors.black)),backgroundColor: Colors.white,));
                      }
                    },
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Text("Log In",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("OR",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: () async {
                      Navigator.pushNamed(context, 'base');

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/logo/fb.png",height: 25),
                        SizedBox(width: 10,),
                        Text("Continue as TheAkhilSarkar",style: TextStyle(color: Colors.blue.shade600,fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  SizedBox(height: 140,),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'signup');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have account ?",style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 5,),
                        Text("Sign Up",style: TextStyle(color: Colors.blue.shade600,fontWeight: FontWeight.w500)),
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
