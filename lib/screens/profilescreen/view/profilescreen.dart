import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/screens/profilescreen/provider/profileprovider.dart';
import 'package:provider/provider.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({Key? key}) : super(key: key);

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  Profileprovider? profileproviderTrue;
  Profileprovider? profileproviderFalse;

  @override
  Widget build(BuildContext context) {
    profileproviderFalse = Provider.of(context, listen: false);
    profileproviderTrue = Provider.of(context, listen: true);
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "theakhilsarkar",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                        Spacer(),
                        Icon(Icons.add_box_outlined, color: Colors.black, size: 30),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.menu, size: 30, color: Colors.black),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/post/p1.jpg"),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text("196",
                                style: TextStyle(fontSize: 18, color: Colors.black)),
                            Text("Posts",
                                style: GoogleFonts.actor(
                                    fontSize: 14, color: Colors.black)),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text("97",
                                style: TextStyle(fontSize: 18, color: Colors.black)),
                            Text("Followers",
                                style: GoogleFonts.actor(
                                    fontSize: 14, color: Colors.black)),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text("92",
                                style: TextStyle(fontSize: 18, color: Colors.black)),
                            Text("Following",
                                style: GoogleFonts.actor(
                                    fontSize: 14, color: Colors.black)),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("TheAkhilSarkar",
                              style: GoogleFonts.poppins(
                                  color: Colors.black, fontWeight: FontWeight.w600)),
                          Text("Director | Developer 🥇",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                              )),
                          Text("Flutter App Devloper 🔥",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                              )),
                          Text("Login in Earth 19 March 🎂 ",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 35,
                          width: 290,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          alignment: Alignment.center,
                          child: Text("Edit profile",
                              style:
                                  GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          alignment: Alignment.center,
                          child: Icon(Icons.person_add),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Discover people",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        Spacer(),
                        Text(
                          "See all",
                          style: GoogleFonts.poppins(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 260,
                      width: double.infinity,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) => DiscoverBox(
                            profileproviderTrue!.profileSuggestionFollowerImg[index],
                            profileproviderTrue!.profileSuggestionFollowerName[index],
                            profileproviderTrue!
                                .profileSuggestionFollowerDescription[index],
                          profileproviderTrue!.celebretyTik[index]
                        ),
                        itemCount:
                            profileproviderTrue!.profileSuggestionFollowerImg.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: TabBar(
                        indicatorColor: Colors.black,
                        tabs: [
                          Tab(
                            icon: Icon(Icons.grid_on,color: Colors.black,size: 30),
                          ),
                          Tab(
                            icon: Icon(Icons.account_box_outlined,size: 30,color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }

  Widget DiscoverBox(
      String profileImg, String profileName, String description,bool tik) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          height: 240,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey.shade400, width: 0.4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("$profileImg"),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$profileName",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 5,),
                  tik?Image.asset("assets/sugestion/tik.png",height: 15,):Text(" "),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "$description",
                style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                height: 35,
                width: 135,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text("Follow",
                    style: GoogleFonts.poppins(color: Colors.white)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.close_outlined, color: Colors.grey.shade400),
        ),
      ],
    );
  }
}
