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
        body: GridView.custom(
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 4,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            repeatPattern: QuiltedGridRepeatPattern.inverted,
            pattern: [
              QuiltedGridTile(2, 2),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
                (context, index) => Image.asset("${searchproviderTrue.searchImgList[index]}",fit: BoxFit.cover),
          ),
          physics: BouncingScrollPhysics(),


        ),
      ),
    );
  }

  Widget postBox(String imgPath) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 120,
      width: 120,
      decoration: BoxDecoration(color: Colors.green),
      alignment: Alignment.center,
      child: Image.asset("$imgPath", fit: BoxFit.fitHeight),
    );
  }

  Widget postBox3(String imgPath3) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 240,
      width: 240,
      decoration: BoxDecoration(color: Colors.yellow),
      alignment: Alignment.center,
      child: Image.asset("${imgPath3}", fit: BoxFit.cover),
    );
  }

  Widget postBox2(String imgPath2) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 240,
      width: 120,
      color: Colors.yellow,
      child: Image.asset("${imgPath2}", fit: BoxFit.cover),
    );
  }
}
