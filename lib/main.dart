import 'package:animation/screens/detail%20screen.dart';
import 'package:animation/screens/test_screen.dart';
import 'package:animation/widgets/bottom_widget.dart';
import 'package:flutter/material.dart';

import 'data/data_list.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBarWidget(),
    );
  }
}
 Widget image(){
  return Container(
      width: double.infinity,
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageMovie.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailScreen(title: titleMovie[index],imgurl: imageMovie[index],desc: descriptionMovie[index]),));
            },
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  ClipRRect(
                    child: Image.network(imageMovie[index],fit: BoxFit.fill,),

                  ),
                  Text(titleMovie[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                ],
              ),
            ),
          );
        },
      )
  );
}
