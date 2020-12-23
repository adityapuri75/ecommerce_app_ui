import 'package:alex/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'main_screen.dart';

class Product_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [ Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 12,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MainScreen()));
                  },
                    child: Icon(Icons.cancel,color: Colors.grey,))],
              ),
            ),
            upperpart(),
            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star_border),
                        ],
                      ),
                      SizedBox(width: 4,),
                      Text("Reviews: 1561",style: TextStyle(fontSize: 12,color: Colors.grey),),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.switch_left),
                    SizedBox(width: 12,),
                    Icon(Icons.share),
                    SizedBox(width: 12,),
                    Icon(Icons.favorite_border),
                    SizedBox(width: 20,),

                  ],
                )
              ],
            ),
            //  Cards
            SizedBox(height: 10,),
            Card(
              elevation: 0.5,
              child: ExpansionTile(
                title: Text("DESCRIPTION"),
                children: [
                  Text("Resolution: HD Ready Android TV (1366x768) | Refresh Rate: 60 hertz \b Connectivity: 3 HDMI ports to connect set top box, Blu Ray players, gaming console | 2 USB ports to connect hard drives and other USB devicesSound: 20 Watts Output | Dolby+ DTS-HDSmart TV Features : Built-In Wi-Fi | PatchWall | Netflix | Prime Video | Disney+Hotstar and more | Android TV 9.0 | Google Assistant | Data SaverDisplay : LED Panel | Vivid Picture engineWarranty Information: 1 year warranty on product and 1 year extra on Panel")
                ],
              ),
            ),
            Card(
              elevation: 0.5,
              child: ExpansionTile(
                title: Text("REVIWS"),
                children: [
                  Text("Resolution: HD Ready Android TV (1366x768) | Refresh Rate: 60 hertz \n Connectivity: 3 HDMI ports to connect set top box, Blu Ray players, gaming console | 2 USB ports to connect hard drives and other USB devicesSound: 20 Watts Output | Dolby+ DTS-HDSmart TV Features : Built-In Wi-Fi | PatchWall | Netflix | Prime Video | Disney+Hotstar and more | Android TV 9.0 | Google Assistant | Data SaverDisplay : LED Panel | Vivid Picture engineWarranty Information: 1 year warranty on product and 1 year extra on Panel")
                ],
              ),
            ),
            Card(
              elevation: 0,
              child: ExpansionTile(
                title: Text("SIMILAR ITEMS"),
                children: [
                  buildRecntlyWidget()
                ],
              ),
            ),
          ],
        )],
        
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: buy(),
      )
    );
  }

  Widget upperpart(){
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 28,right: 20),
          child: Container(
            height: 280,
            width: 300,
            child: Image.network(
              "https://images-na.ssl-images-amazon.com/images/I/81FLYO0y3yL._SL1500_.jpg",
              height: 300,
              width: 300,
            ),
          ),
        ),
        Text("TV & ELECTRONICS",style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline,),),
        SizedBox(height: 10,),
        Text("TV Xiaomi Mi LED TV 55 \n UHD 4K (L55M5-5ARU)",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        SizedBox(height: 15,),
        Text("11 999 \$",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green),),
      ],
    );
  }
  
  Widget buy(){
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xff479d50),
          borderRadius: BorderRadius.circular(35),

        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_cart_outlined,color: Colors.white,),
              SizedBox(width: 10,),
              Text("Add To Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
            ],
          ),
        ),
      ),
    );

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
            InkWell(
              child: Column(
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
