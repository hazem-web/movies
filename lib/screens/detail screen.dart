import 'package:flutter/material.dart';


class DetailScreen extends StatelessWidget {

String imgurl;
String title;
String desc;


DetailScreen({required this.imgurl,required this.title,required this.desc});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Details Screen"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                width: 300,
                height: 250,
                child: Image.network(imgurl,height: 50,fit: BoxFit.fill,)),
            Text("Title : $title",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
            Text("Description:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
             Text(desc,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}