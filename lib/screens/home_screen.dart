import 'package:animation/data/data_list.dart';
import 'package:animation/screens/detail%20screen.dart';
import 'package:flutter/material.dart';




class HomeScreen extends StatelessWidget {
  @override
  List<String> imageMovie2 =[
    "https://image.tmdb.org/t/p/w500/deTOAcMWuHTjOUPQphwcPFFfTQz.jpg",
    "https://image.tmdb.org/t/p/w500/8Ls1tZ6qjGzfGHjBB7ihOnf7f0b.jpg",
    "https://image.tmdb.org/t/p/w500/AtsgWhDnHTq68L0lLsUrCnM7TjG.jpg",
    "https://image.tmdb.org/t/p/w500/xnopI5Xtky18MPhK40cZAGAOVeV.jpg",
    "https://image.tmdb.org/t/p/w500/svIDTNUoajS8dLEo7EosxvyAsgJ.jpg",
  ];
  List titleMovie2 =[
    "Dumbo",
    "Escape Room",
    "Captain Marvel",
    "Shazam!",
    "Glass",

  ];
  List des3 = [
    "A young elephant, whose oversized ears enable him to fly, helps save a struggling circus, but when the circus plans a new venture, Dumbo and his friends discover dark secrets beneath its shiny veneer.",
    "Six strangers find themselves in circumstances beyond their control, and must use their wits to survive.",
    "The story follows Carol Danvers as she becomes one of the universe’s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races. Set in the 1990s, Captain Marvel is an all-new adventure from a previously unseen period in the history of the Marvel Cinematic Universe.",
    "A boy is given the ability to become an adult superhero in times of need with a single magic word.",
    "In a series of escalating encounters, security guard David Dunn uses his supernatural abilities to track Kevin Wendell Crumb, a disturbed man who has twenty-four personalities. Meanwhile, the shadowy presence of Elijah Price emerges as an orchestrator who holds secrets critical to both men.",
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Trending",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                Text("See all",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Container(
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
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("New Movies",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                Text("See all",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Container(
              width: double.infinity,
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageMovie2.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailScreen(title: titleMovie2[index],imgurl: imageMovie2[index],desc: des3[index]),));
                    },
                    child: Card(
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          ClipRRect(
                            child: Image.network(imageMovie2[index],fit: BoxFit.fill,),
                          ),
                          Text(titleMovie2[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      ),
                    ),
                  );
                },
              )
          ),

    ],
      ),
    );
  }
}
