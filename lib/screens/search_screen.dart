import 'package:flutter/material.dart';

import '../data/data_list.dart';
import 'detail screen.dart';



class SearchScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(fillColor: Colors.white,
                      filled: true,
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search,color: Colors.grey,),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))

                    ),

                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: ListView.builder(
                    itemCount: imageMovie.length,
                    itemBuilder:(context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(imgurl: imageMovie[index],title: titleMovie[index],desc: descriptionMovie[index],)));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          width: double.infinity,
                          margin: EdgeInsets.all(5),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Image.network(imageMovie[index],height:250,width:double.infinity,fit: BoxFit.fill,),
                              Container(
                                  padding: EdgeInsetsDirectional.only(start: 15,top: 10),
                                  height: 35,
                                  width: double.infinity,
                                  color: Colors.black26,
                                  child: Text(titleMovie[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),))
                            ],
                          ),
                        ),
                      );
                    },
                ),
                )

            ],
          ),
        ),
      ),
    );
  }
}
