import 'package:flutter/material.dart';
import 'package:instagram/screens/basescreen/provider/baseprovider.dart';
import 'package:instagram/screens/profilescreen/view/profilescreen.dart';
import 'package:instagram/screens/searchscreen/view/searchscreen.dart';
import 'package:provider/provider.dart';

class Basescreen extends StatefulWidget {
  const Basescreen({Key? key}) : super(key: key);

  @override
  State<Basescreen> createState() => _BasescreenState();
}

class _BasescreenState extends State<Basescreen> {
  @override
  Widget build(BuildContext context) {

    Baseprovider baseproviderTrue = Provider.of(context,listen: true);
    Baseprovider baseproviderFalse = Provider.of(context,listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          iconSize: 30,
          currentIndex: baseproviderTrue.currentNavigationIndex,
          onTap: (value) {
            baseproviderFalse.changeNavigationIndex(value);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,color: Colors.black),label: "Reels",),
            BottomNavigationBarItem(icon: Icon(Icons.slow_motion_video,color: Colors.black),label: "Reels"),
            BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black),label: "Profile"),
          ],
        ),
        body: baseproviderTrue.screenList[baseproviderTrue.currentNavigationIndex],
      ),
    );
  }
}
