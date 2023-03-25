import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/screens/basescreen/provider/baseprovider.dart';
import 'package:instagram/screens/basescreen/view/basescreen.dart';
import 'package:instagram/screens/postscreen/provider/postprovider.dart';
import 'package:instagram/screens/postscreen/view/postscreen.dart';
import 'package:instagram/screens/profilescreen/provider/profileprovider.dart';
import 'package:instagram/screens/searchscreen/provider/searchprovider.dart';
import 'package:instagram/screens/searchscreen/view/searchscreen.dart';
import 'package:instagram/screens/signin_screen/view/signins_creen.dart';
import 'package:instagram/screens/signup_screen/view/signup_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Searchprovider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Baseprovider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Profileprovider(),
        ),
        ChangeNotifierProvider(create: (context) => Postprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Spleshscreen(),
          'splesh': (context) => Spleshscreen(),
          'signin': (context) => SigninScreen(),
          'signup': (context) => SignupScreen(),
          'base': (context) => Basescreen(),
          'search': (context) => Searchscreen(),
          'post': (context) => Postscreen(),
        },
      ),
    ),
  );
}

class Spleshscreen extends StatefulWidget {
  const Spleshscreen({Key? key}) : super(key: key);

  @override
  State<Spleshscreen> createState() => _SpleshscreenState();
}

class _SpleshscreenState extends State<Spleshscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, 'signin');
      },
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset("assets/logo/l2.jpg", fit: BoxFit.cover),
        ),
      ),
    );
  }
}
