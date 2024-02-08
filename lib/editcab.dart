import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tripswip/cabautorickshaw.dart';
import 'package:tripswip/cabcar.dart';
import 'package:tripswip/cabtravaller.dart';
import 'package:tripswip/editcabcar.dart';
import 'package:tripswip/editcabtravaller.dart';
class cabedit extends StatefulWidget {
  const cabedit({Key? key}) : super(key: key);

  @override
  State<cabedit> createState() => _cabeditState();
}

class _cabeditState extends State<cabedit> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: HexColor("D8F3DC"),
      appBar: AppBar(backgroundColor: HexColor("D8F3DC"),),
      body: Container(height: double.infinity,width: double.infinity,child: Stack(children: [
        Column(children: [

          Text("Edit your cab service",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,shadows: [Shadow(color: Colors.grey,offset: Offset(2, 2),blurRadius: 4)]),),
          SizedBox(height: 15,),

          SizedBox(height: 25,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
            Column(
              children: [
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => editcabcar(),));
                },child: Container(height: 100,width: 130,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/carmain-removebg-preview.png"))),)),
                Text("Cars",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),


              ],
            ),
            Column(
              children: [
                InkWell(onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => travaller(),) );
                },child: Container(height: 100,width: 130,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/TEMPO-TRAVELLER-ON-RENT-IN-PUNE-removebg-preview.png"))),)),
                Text("Traveller",style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),

              ],
            ),
          ],),
          Column(
            children: [
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => editcabtrav(),));
              },child: Container(height: 100,width: 130,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/autorickshw-removebg-preview.png"))),)),
              Text("Auto rickshaw",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),

            ],
          ),

        ]),
        Positioned(top: 358,child: Container(height: 200,width: 360,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage("img/mainebackground.png"))),))
      ],),),
    );
  }
}
