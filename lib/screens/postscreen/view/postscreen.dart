import 'package:flutter/material.dart';
import 'package:instagram/screens/postscreen/provider/postprovider.dart';
import 'package:provider/provider.dart';

class Postscreen extends StatefulWidget {
  const Postscreen({Key? key}) : super(key: key);

  @override
  State<Postscreen> createState() => _PostscreenState();
}

Postprovider? postproviderTrue;
Postprovider? postproviderFalse;

class _PostscreenState extends State<Postscreen> {
  @override
  Widget build(BuildContext context) {
    postproviderTrue = Provider.of(context, listen: true);
    postproviderFalse = Provider.of(context, listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: InkWell(onTap: () {
            Navigator.pop(context);
          },child: Icon(Icons.arrow_back, color: Colors.black, size: 30)),
          title: Text(
            "Posts",
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => openPostBox(
            postproviderTrue!.ProfilePostImg[index],
          ),
          itemCount: postproviderTrue!.ProfilePostImg.length,
        ),
      ),
    );
  }

  Widget openPostBox(String postPath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 17,
            backgroundImage: AssetImage("assets/post/p1.jpg"),
          ),
          title: Text(
            "theakhilsarkar",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          trailing: Icon(Icons.more_vert, size: 25, color: Colors.black),
        ),
        Container(
          height: 500,
          width: double.infinity,
          child: Image.asset("$postPath", fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Icon(Icons.favorite, color: Colors.red, size: 25),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.maps_ugc_outlined, color: Colors.black, size: 25),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.send, color: Colors.black, size: 25),
              Spacer(),
              Icon(Icons.bookmark_border, size: 25, color: Colors.black),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 8),
          child: Row(
            children: [
              CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage("assets/sugestion/raj.jpg")),
              CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage("assets/sugestion/vidit.jpg")),
              CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage("assets/sugestion/prina.jpg")),
              SizedBox(
                width: 5,
              ),
              Text("Liked by "),
              Text("raj_khatri_07 ",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500)),
              Text("and "),
              Text("97M others ",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 8),
          child: Row(
            children: [
              Text("theakhilsarkar ",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500)),
              Text("Alaways Be Happy 😊"),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Text("march 19",
              style: TextStyle(color: Colors.grey, fontSize: 12)),
        ),
      ],
    );
  }
}
