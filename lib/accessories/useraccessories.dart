import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tripswip/accessories/accslist.dart';
import 'package:tripswip/cabbooking.dart';
import 'package:tripswip/profile.dart';
import 'package:tripswip/userrentelpages/rentlist.dart';
import 'package:tripswip/users/cabbookinguser.dart';
import 'package:tripswip/users/cabbookpages.dart';
import 'package:tripswip/users/testingpageexamples.dart';
import 'package:tripswip/userrentelpages/userrentelpage.dart';
import 'package:tripswip/userworkshop/userworkshop1.dart';
class useracs extends StatefulWidget {
  const useracs({Key? key}) : super(key: key);

  @override
  State<useracs> createState() => _useracsState();
}

class _useracsState extends State<useracs> {


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
            Padding(
              padding: const EdgeInsets.only(top: 165.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(height: 45,width: 339,child: TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search),filled: true,fillColor: Colors.white,enabledBorder: OutlineInputBorder(),focusedBorder: OutlineInputBorder()),))
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
            ,Padding(
              padding: const EdgeInsets.only(top: 238.0),
              child:SizedBox(height: 556,
                child:   GridView.builder(
                    itemCount: acscar.length,controller: new ScrollController(keepScrollOffset: false,),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.8,crossAxisSpacing: 0.0 ,mainAxisSpacing: 14),itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 4,right: 4),
                    child:
                    Stack(
                      children: [
                        Card(elevation: 5,child: Container(height: 220,width: 165,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.white))),
                        Padding(
                          padding: const EdgeInsets.only(top: 105.0,left: 6),
                          child: Container(width: 165,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(acscar[index]['name'],style: TextStyle(color: HexColor("#2D6A4F"),shadows: [Shadow(color: Colors.grey,offset: Offset(2, 2),blurRadius: 5)],fontWeight: FontWeight.bold),),
                                acscar[index]['rat'],
                                Row(
                                  children: [
                                    Text(acscar[index]['off'],style: TextStyle(color:  HexColor("#2D6A4F"),fontWeight: FontWeight.w700)),
                                    SizedBox(width: 4,),
                                    Text(acscar[index]['ret'],style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w900),),
                                  ],
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(width: 1,),

                                    Text(acscar[index]['in'],style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
                                    SizedBox(width: 25,),

                                    Container(alignment: Alignment.center,height: 35,width: 85,decoration: BoxDecoration(color: HexColor("#E9BC1D"),borderRadius: BorderRadius.circular(5)),child: Text("Buy now",style: TextStyle(color: HexColor("1B4332"),fontWeight: FontWeight.w700),),),
                                    SizedBox(width: 4,),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(child: Card(elevation: 5,child: Container(height: 95,width: 165,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.white,image: DecorationImage(fit: BoxFit.contain,image:acscar[index]['img']))))),
                        // Card(elevation: 5,child: Container(height: 80,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[800]),child: Image.asset("img/bird_fd4_drools-removebg-preview.png"),)),
                      ],
                    ),


                  );
                }),
              ),
            ),
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