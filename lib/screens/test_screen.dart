import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List title = [
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
  ];

double? width;

double? height;

Color? c;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 200,
          itemBuilder: (context, index) {
            return Text("item $index",style: TextStyle(color: Colors.red),);
          },
        ),
      ),
    );
  }

  Widget container(double w , double h , Color c,IconData wp){
    return Container(
      width: w,
      height: h,
      color: c,
      child: Icon(wp),

    );
  }
}
