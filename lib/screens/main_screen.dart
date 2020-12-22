import 'package:alex/classes/Top_design.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "profile",
          ),

        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          TopDesign(),
          Expanded(
            child: ListView(

                 children : [buildCategory(),Padding(
                   padding: const EdgeInsets.only(top: 15),
                   child: carousel(),
                 ),


                 ]),
          ),

          // background(),
          //
          //  top_bar(),
          //
          // Positioned(
          //   top: 115,
          //     left: 75,
          //     child: search()),
          // // Positioned(
          // //   top: 50,
          // // child: buildCategory()),



        ],

      ),
    );
  }

  Widget carousel (){
    return SizedBox(
        height: 220.0,
        width: 300.0,
        child: Carousel(
          images: [
            NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
            NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
          ],
          dotSize: 0,
          dotBgColor: Colors.purple.withOpacity(0),
        )
    );
  }
  Widget buildCategory() {
    return Container(
      color: Colors.white,
        height: 130,
        alignment: Alignment.centerLeft,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: ClampingScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 80,
                  height: 80,
                  alignment: Alignment.center,
                  child: ClipOval(
                    child: Image.network(
                      "https://p2.piqsels.com/preview/194/973/219/macbook-laptop-colour-tech.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(45),
                      color: Colors.white,
                      boxShadow: [
                        // BoxShadow(
                        //     color: Colors.black12,
                        //     offset: Offset(0, 5),
                        //     blurRadius: 15)
                      ]),
                ),
                Row(children: [
                  Text(" Computers"),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 14,
                  ),
                ])
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 80,
                  height: 80,
                  alignment: Alignment.center,
                  child: ClipOval(
                    child: Image.network(
                      "https://p2.piqsels.com/preview/194/973/219/macbook-laptop-colour-tech.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 5),
                            blurRadius: 15)
                      ]),
                ),
                Row(children: [
                  Text(" Computers"),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 14,
                  ),
                ])
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 80,
                  height: 80,
                  alignment: Alignment.center,
                  child: ClipOval(
                    child: Image.network(
                      "https://p2.piqsels.com/preview/194/973/219/macbook-laptop-colour-tech.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 5),
                            blurRadius: 15)
                      ]),
                ),
                Row(children: [
                  Text(" Computers"),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 14,
                  ),
                ])
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 80,
                  height: 80,
                  alignment: Alignment.center,
                  child: ClipOval(
                    child: Image.network(
                      "https://p2.piqsels.com/preview/194/973/219/macbook-laptop-colour-tech.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 5),
                            blurRadius: 15)
                      ]),
                ),
                Row(children: [
                  Text(" Computers"),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 14,
                  ),
                ])
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 80,
                  height: 80,
                  alignment: Alignment.center,
                  child: ClipOval(
                    child: Image.network(
                      "https://p2.piqsels.com/preview/194/973/219/macbook-laptop-colour-tech.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 5),
                            blurRadius: 15)
                      ]),
                ),
                Row(children: [
                  Text(" Computers"),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 14,
                  ),
                ])
              ],
            ),
          ],
        ));
  }

}

