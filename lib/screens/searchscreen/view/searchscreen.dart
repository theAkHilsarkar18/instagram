import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/screens/searchscreen/provider/searchprovider.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({Key? key}) : super(key: key);

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  @override
  Widget build(BuildContext context) {
    Searchprovider searchproviderFalse = Provider.of(context, listen: false);
    Searchprovider searchproviderTrue = Provider.of(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemBuilder: (context, index) => SuperStarLink(), itemCount:1),
      ),
    );
  }

  Widget SuperStarLink() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    postBox(),
                    postBox(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    postBox(),
                    postBox(),
                  ],
                ),
              ],
            ),
            postBox2(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            postBox2(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    postBox(),
                    postBox(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    postBox(),
                    postBox(),
                  ],
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            postBox3(),
            Column(
              children: [
                postBox(),
                postBox(),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                postBox(),
                postBox(),
                postBox(),
              ],
            ),
            Row(
              children: [
                postBox(),
                postBox(),
                postBox(),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget Starlink1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                postBox(),
                postBox(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                postBox(),
                postBox(),
              ],
            ),
          ],
        ),
        postBox2(),
      ],
    );
  }

  Widget Starlink2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        postBox2(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                postBox(),
                postBox(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                postBox(),
                postBox(),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget Starlink3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        postBox3(),
        Column(
          children: [
            postBox(),
            postBox(),
          ],
        ),
      ],
    );
  }

  Widget Starlink4() {
    return Column(
      children: [
        Row(
          children: [
            postBox(),
            postBox(),
            postBox(),
          ],
        ),
        Row(
          children: [
            postBox(),
            postBox(),
            postBox(),
          ],
        ),
      ],
    );
  }

  Widget postBox() {
    return Container(
      padding: EdgeInsets.all(5),
      height: 120,
      width: 120,
      decoration: BoxDecoration(color: Colors.yellow),
      alignment: Alignment.center,
      child: Image.asset("assets/logo/logo.png", fit: BoxFit.cover),
    );
  }

  Widget postBox3() {
    return Container(
      padding: EdgeInsets.all(5),
      height: 240,
      width: 240,
      decoration: BoxDecoration(color: Colors.yellow),
      alignment: Alignment.center,
      child: Image.asset("assets/logo/logo.png", fit: BoxFit.cover),
    );
  }

  Widget postBox2() {
    return Container(
      padding: EdgeInsets.all(5),
      height: 240,
      width: 120,
      color: Colors.yellow,
      child: Image.asset("assets/logo/logo2.jpg", fit: BoxFit.cover),
    );
  }
}
