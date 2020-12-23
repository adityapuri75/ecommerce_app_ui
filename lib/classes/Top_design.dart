

import 'package:flutter/material.dart';

class TopDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        background(),

        top_bar(),

        Positioned(
            top: 110,
            left: 23,
            child: search()),
        // Positioned(
        //   top: 50,
        // child: buildCategory()),



      ],

    );
  }


  Widget search(){
    return Container(
      height: 56,
      width: 350,
      child: Card(
        elevation: 6,
        shape: StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                  labelText: "I'm Loking for...", icon: Icon(Icons.search,color: Colors.black38,)),
            ),
          ),
        ),
      ),
    );
  }
  Widget background(){
    return Container(
      color: Colors.white,
      height: 167,
      width: 400,
    );
  }
  Widget top_bar(){
    return Container(
      height: 135,
      decoration: BoxDecoration(
          color: Color(0xff172536),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.person,color: Colors.white,),
            Container(
              child: Row(
                children: <Widget>[
                  Icon(Icons.six_mp,color: Colors.green,size: 30,),
                  SizedBox(width: 10,),
                  Text("ROZETKA",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Icon(Icons.shopping_cart_outlined,color: Colors.white,)

          ],
        ),
      ),
    );
  }



}
