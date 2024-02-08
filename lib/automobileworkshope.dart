import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tripswip/cabautorickshaw.dart';
import 'package:tripswip/cabcar.dart';
import 'package:tripswip/cabtravaller.dart';
class Autoworkshop extends StatefulWidget {
  const Autoworkshop({Key? key}) : super(key: key);

  @override
  State<Autoworkshop> createState() => _AutoworkshopState();
}

class _AutoworkshopState extends State<Autoworkshop> {



  var work;
  @override
  Widget build(BuildContext context) {


    return Scaffold(backgroundColor: HexColor("D8F3DC"),
      appBar: AppBar(backgroundColor: HexColor("D8F3DC"),),
      body: Container(height: double.infinity,width: double.infinity,child: Stack(children: [
        Column(children: [

          Text("Automobile workshop",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,shadows: [Shadow(color: Colors.grey,offset: Offset(2, 2),blurRadius: 4)]),),
          SizedBox(height: 10,)
          ,Text("Get easy customers on your",style: TextStyle(color: HexColor("808080")),)
          ,Text("range of location.",style: TextStyle(color: HexColor("808080")),)
          ,
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
            Container(height: 55,width: 130,decoration: BoxDecoration(borderRadius:BorderRadius.circular(10) ,color: Colors.black12,),child: Row(children: [
              Radio(value: 'car', groupValue: work, onChanged: (value) {
                setState(() {
                  work=value;
                });
              },),
              Container(height: 55,width: 75,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage("img/carrent-removebg-preview.png"))),)
            ],),),


            Container(height: 55,width: 130,decoration: BoxDecoration(borderRadius:BorderRadius.circular(10) ,color: Colors.black12,),child: Row(children: [
              Radio(value: 'bike', groupValue: work, onChanged: (value) {
                setState(() {
                  work=value;
                });
              },),
              Container(height: 59,width: 75,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/bike-removebg-preview.png"))),)
            ],),),




          ],),


        ]),
        Positioned(top: 358,child: Container(height: 200,width: 360,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage("img/mainebackground.png"))),))
        ,Padding(
          padding: const EdgeInsets.only(top: 185.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: 3,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Container(height: 364,width: 364,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(height: 5,),
                  Text("DETAILS",style: TextStyle(fontSize: 15,color: HexColor("9E9E9E"),fontWeight: FontWeight.w600),),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10),
                    child:   TextField(decoration: InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black12)),hintText: "Shop name",hintStyle: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey[400])),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10),
                    child:   TextField(decoration: InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black12)),hintText: "Price",hintStyle: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey[400])),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10),
                    child:   TextField(decoration: InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black12)),hintText: "Photo",hintStyle: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey[400])),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10),
                    child:   TextField(decoration: InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black12)),hintText: "Contact",hintStyle: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey[400])),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10),
                    child:   TextField(decoration: InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),hintText: "Location",hintStyle: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey[400])),),
                  ),
                  SizedBox(height: 5,),

                  InkWell(onTap: () {
                    Navigator.pop(context);
                  },child: Container(alignment: Alignment.center,height: 50,width: 315,decoration: BoxDecoration(color: HexColor("1B4332"),borderRadius: BorderRadius.circular(6)),child: Text("SUBMIT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),))

                ],),
              ),),
            ),
          ),
        ),
      ],),),
    );
  }
}
