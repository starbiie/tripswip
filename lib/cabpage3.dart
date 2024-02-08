import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tripswip/cabbooking.dart';
import 'package:tripswip/profile.dart';
import 'package:tripswip/users/cabbookinguser.dart';
import 'package:tripswip/users/locationselect.dart';
import 'package:tripswip/users/testingpageexamples.dart';
import 'package:tripswip/userrentelpages/userrentelpage.dart';
import 'package:tripswip/users/usershomepage.dart';

class cabpage3 extends StatefulWidget {
  const cabpage3({Key? key}) : super(key: key);

  @override
  State<cabpage3> createState() => _cabpage3State();
}

class _cabpage3State extends State<cabpage3> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: HexColor("202020"),

        body: Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    IconButton(onPressed: () {

                    }, icon: Icon(Icons.arrow_back,color: Colors.black,)),

                  ],
                ),
              ),
              painter: HeaderCurvedContainer(),

            ),
            Positioned(top: 105,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(height: 250,width:310,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage("img/slazzer-edit-image_prev_ui.png"))),),
                  Text("Enjoy your Ride",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                  Text("Book your cab and enjoy always ",style: TextStyle(color: Colors.grey),),
                  Text("available and safe ride with loved ones.",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 30,),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => userhome(),));
                  },child: Card(color: HexColor("62C449"),elevation: 10,child: Container(height: 45,width: 120,decoration: BoxDecoration(color:HexColor("62C449"),borderRadius: BorderRadius.circular(10)),child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Text("Back to home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_right_alt_sharp,color: Colors.white,size: 25,),
                    ],
                  ),)))
                  // Padding(
                  //   padding: const EdgeInsets.all(20.0),
                  //   child: Text(
                  //     'Profile',
                  //     style: TextStyle(
                  //       fontSize: 35.0,
                  //       letterSpacing: 1.5,
                  //       color: Colors.white,
                  //       fontWeight: FontWeight.w600,
                  //
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 108.0),
                  //   child: Container(
                  //     width: MediaQuery.of(context).size.width / 2,
                  //     height: MediaQuery.of(context).size.width / 2,
                  //     padding: const EdgeInsets.all(10.0),
                  //     decoration: BoxDecoration(
                  //       shape: BoxShape.circle,
                  //       color: Colors.white,
                  //       // image: DecorationImage(
                  //       //   image: AssetImage(null),
                  //       //   fit: BoxFit.cover,
                  //       // ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 498.0),
              child: Container(height: 300,width: 330,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage("img/itslucky.png"))),),
            )

          ],
        ),
      ),
    );
  }
}

// CustomPainter class to for the header curved-container
class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color =  HexColor("#4D5151");
    Path path = Path()
      ..relativeLineTo(0, 120)
      ..quadraticBezierTo(size.width / 2, 200.0, size.width, 120)
      ..relativeLineTo(0, -120)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}