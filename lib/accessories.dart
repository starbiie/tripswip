import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tripswip/acswheels.dart';
import 'package:tripswip/cabautorickshaw.dart';
import 'package:tripswip/cabcar.dart';
import 'package:tripswip/cabtravaller.dart';
import 'package:tripswip/helmets.dart';
import 'package:tripswip/lighting.dart';
import 'package:tripswip/workshop.dart';
class accs extends StatefulWidget {
  const accs({Key? key}) : super(key: key);

  @override
  State<accs> createState() => _accsState();
}

class _accsState extends State<accs> {

  var rent;
  @override
  Widget build(BuildContext context) {


    return Scaffold(backgroundColor: HexColor("D8F3DC"),
      appBar: AppBar(backgroundColor: HexColor("D8F3DC"),),
      body: Container(height: double.infinity,width: double.infinity,child: Stack(children: [
        Column(children: [

          Text("Provide your accessories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,shadows: [Shadow(color: Colors.grey,offset: Offset(2, 2),blurRadius: 4)]),),
          SizedBox(height: 15,)
          ,Text("Select your vehicle and the accessories",style: TextStyle(shadows: [Shadow(color:HexColor("808080"),offset: Offset(2, 2),blurRadius: 4)]),)
          ,Text("willing to provide with their details .",style: TextStyle(shadows: [Shadow(color:HexColor("808080"),offset: Offset(2, 2),blurRadius: 4)]),)
          ,
          SizedBox(height: 10,),
          SizedBox(height: 396,
            child:   GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),children: [

              Column(
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => acswheels(),));
                  },child: Container(height: 135,width: 140,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage("img/carwheels-removebg-preview.png"))),)),
                  Text("Wheels",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),

                ],
              ),

              Column(
                children: [
                  SizedBox(height: 25,),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => lighting()));

                  },child: CircleAvatar(radius: 45,child: Container(height: 110,width: 110,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),image: DecorationImage(fit: BoxFit.cover,image: AssetImage("img/idea.jpg"))),))),
                  SizedBox(height: 25,),
                  Text("Lighting",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),

                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => workshop()));

                    },child: Container(height: 135,width: 140,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage("img/workshopp-removebg-preview.png"))),)),
                    Text("Workshops",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => helmets()));

                    },child: Container(height: 100,width: 100,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.contain,image: AssetImage("img/helm-2060063_960_720.png"))),)),
                  SizedBox(height: 25,),
                    Text("Helmets",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),

                  ],
                ),
              ),


            ],),
          ),


        ]),
        Positioned(top: 358,child: Container(height: 200,width: 360,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage("img/mainebackground.png"))),))

      ],),),
    );
  }
}
