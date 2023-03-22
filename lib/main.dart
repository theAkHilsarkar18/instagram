import 'package:flutter/material.dart';
import 'package:instagram/screens/basescreen/provider/baseprovider.dart';
import 'package:instagram/screens/basescreen/view/basescreen.dart';
import 'package:instagram/screens/searchscreen/provider/searchprovider.dart';
import 'package:instagram/screens/searchscreen/view/searchscreen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Searchprovider(),),
        ChangeNotifierProvider(create: (context) => Baseprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Basescreen(),
          'search' : (context) => Searchscreen(),
        },
      ),
    ),
  );
}