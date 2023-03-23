import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({Key? key}) : super(key: key);

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 5,),
                  Text("theakhilsarkar",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),),
                  Spacer(),
                  Icon(Icons.add_box_outlined,color: Colors.black,size: 30),
                  SizedBox(width: 20,),
                  Icon(Icons.menu,size: 30,color: Colors.black),
                  SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 5,),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/post/p1.jpg"),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Text("6",style: TextStyle(fontSize: 18,color: Colors.black)),
                      Text("Posts",style: GoogleFonts.actor(fontSize: 14,color: Colors.black)),
                    ],
                  ),
                  SizedBox(width: 15,),
                  Column(
                    children: [
                      Text("323M",style: TextStyle(fontSize: 18,color: Colors.black)),
                      Text("Followers",style: GoogleFonts.actor(fontSize: 14,color: Colors.black)),
                    ],
                  ),
                  SizedBox(width: 15,),
                  Column(
                    children: [
                      Text("1",style: TextStyle(fontSize: 18,color: Colors.black)),
                      Text("Following",style: GoogleFonts.actor(fontSize: 14,color: Colors.black)),
                    ],
                  ),
                  SizedBox(width: 5,),

                ],
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("TheAkhilSarkar",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600)),
                    Text("Director | Developer",style: GoogleFonts.poppins(color: Colors.black,)),
                    Text("Flutter App Devloper",style: GoogleFonts.poppins(color: Colors.black,)),
                    Text("Login in Earth 19 March !",style: GoogleFonts.poppins(color: Colors.black,)),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 35,
                    width: 290,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text("Edit profile",style: GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Icon(Icons.person_add),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 5,),
                  Text("Discover people",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),),
                  Spacer(),
                  Text("See all",style: GoogleFonts.poppins(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 15),),
                  SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 270,
                  width: double.infinity,
                  child: ListView.builder(itemBuilder: (context, index) => DiscoverBox(), itemCount: 8,shrinkWrap: true,scrollDirection: Axis.horizontal)),

            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),

    );
  }

Widget DiscoverBox()
{
  return Container(
    margin: EdgeInsets.all(10),
    height: 250,
    width: 170,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.grey,width: 0.5),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 15,),
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage("assets/logo/logo.png"),
        ),
        SizedBox(height: 10,),
        Text("Instagram",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500),),
        Text("Instagram",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 12),),
        Text("Official Account",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 12),),
        SizedBox(height: 5,),
        Container(
          height: 40,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: Text("Follow",style: GoogleFonts.poppins(color: Colors.white)),
        ),

      ],
    ),
  );
}

}
