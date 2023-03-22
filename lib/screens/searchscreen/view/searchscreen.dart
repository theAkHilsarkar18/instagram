import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/screens/searchscreen/provider/searchprovider.dart';
import 'package:provider/provider.dart';

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
      child: GridView.custom(
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          pattern: [
            WovenGridTile(1,alignment: AlignmentDirectional.topStart),
            WovenGridTile(1,alignment: AlignmentDirectional.topStart),
            WovenGridTile(
              5 / 8,
              alignment: AlignmentDirectional.centerEnd,
            ),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => postBox(),
        ),
      ),
    );
  }

  Widget postBox() {
    return Container(
      height: 150,
      width: 150,
      color: Colors.yellow,
    );
  }
}
