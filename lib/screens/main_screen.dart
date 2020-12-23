import 'package:alex/classes/Top_design.dart';
import 'package:alex/classes/bottom%20design.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
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
        unselectedItemColor: Colors.white,
        backgroundColor: Color(0xff479d50),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_business,),
              label: "Catagory"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,),
              label: "Orders"
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
                   padding: const EdgeInsets.only(top: 10,bottom: 10),
                   child: carousel(),
                 ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Recently Viewed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                  buildRecntlyWidget(),


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
        height: 200.0,
        width: 300.0,
        child: Carousel(
          images: [
            NetworkImage('https://i.pinimg.com/564x/90/29/fa/9029fa94672f7af5fa92f6b6da621d07.jpg'),
            NetworkImage('https://i.pinimg.com/564x/ab/14/f4/ab14f46a1710d0f1c87ee6f67433a912.jpg'),
            NetworkImage('https://i.pinimg.com/564x/a1/7c/45/a17c45447573632e26950fb865f400c8.jpg'),
          ],
          dotSize: 0,
          dotBgColor: Colors.purple.withOpacity(0),
        )
    );
  }
  Widget buildCategory() {
    return Container(
      color: Colors.white,
        height: 120,
        alignment: Alignment.centerLeft,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: ClampingScrollPhysics(),
          children: [
            SizedBox(width: 15,),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 80,
                    width: 80,
                    color: Colors.black12,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/PicsArt_12-23-11.33.49.png"),
                          fit: BoxFit.cover,

                        ),
                        borderRadius: BorderRadius.circular(35),

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Row(children: [
                  Text("Iphones",style: TextStyle(fontWeight: FontWeight.bold),),
                ])
              ],
            ),
            SizedBox(width: 15,),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 80,
                    width: 80,
                    color: Colors.black12,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/PicsArt_12-24-01.15.40.png"),
                          fit: BoxFit.cover,

                        ),
                        borderRadius: BorderRadius.circular(35),

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Row(children: [
                  Text("HeadPhones",style: TextStyle(fontWeight: FontWeight.bold),),
                ])
              ],
            ),
            SizedBox(width: 15,),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 80,
                    width: 80,
                    color: Colors.black12,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/PicsArt_12-24-01.13.46.png"),
                          fit: BoxFit.cover,

                        ),
                        borderRadius: BorderRadius.circular(35),

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Row(children: [
                  Text("Laptops",style: TextStyle(fontWeight: FontWeight.bold),),
                ])
              ],
            ),
            SizedBox(width: 15,),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 80,
                    width: 80,
                    color: Colors.black12,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/PicsArt_12-24-01.15.04.png"),
                          fit: BoxFit.cover,

                        ),
                        borderRadius: BorderRadius.circular(35),

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Row(children: [
                  Text("Phones",style: TextStyle(fontWeight: FontWeight.bold),),
                ])
              ],
            ),
            SizedBox(width: 15,),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 80,
                    width: 80,
                    color: Colors.black12,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Images/PicsArt_12-24-01.15.40.png"),
                            fit: BoxFit.cover,

                          ),
                          borderRadius: BorderRadius.circular(35),

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Row(children: [
                  Text(" Computers",style: TextStyle(fontWeight: FontWeight.bold),),
                ])
              ],
            ),
            SizedBox(width: 15,),
          ],
        ));
  }

  Padding buildRecntlyWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16,),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 140,
                  child: Image.network(
                    "https://images-na.ssl-images-amazon.com/images/I/81FLYO0y3yL._SL1500_.jpg",
                    height: 140,
                    width: 140,
                  ),
                ),
                Text(
                  'TV Xiaomi \n Mi Led TV 55UHD \n 4K',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$11 999",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.green),
                )
              ],
            ),
            SizedBox(width: 15,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 140,
                  child: Image.network(
                    "https://images-na.ssl-images-amazon.com/images/I/81t2A6uhm4L._SL1500_.jpg",
                    height: 140,
                    width: 140,
                  ),
                ),
                Text(
                  'TV Xiaomi \n Mi Led TV 55UHD \n 4K',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$13 999",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.green),
                )
              ],
            ),
            SizedBox(width: 15,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 140,
                  child: Image.network(
                    "https://images-na.ssl-images-amazon.com/images/I/81SOk1GAglL._SL1500_.jpg",
                    height: 140,
                    width: 140,
                  ),
                ),
                Text(
                  'TV Xiaomi \n Mi Led TV 55UHD \n 4K',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$11 125",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.green),
                )
              ],
            ),
            SizedBox(width: 15,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 140,
                  child: Image.network(
                    "https://images-na.ssl-images-amazon.com/images/I/71tt%2BZeOw%2BL._SL1500_.jpg",
                    height: 140,
                    width: 140,
                  ),
                ),
                Text(
                  'TV Xiaomi \n Mi Led TV 55UHD \n 4K',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$11 564",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.green),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

