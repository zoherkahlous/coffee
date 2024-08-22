import 'package:coffee/cafe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_options.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => cafe()),
            );
          },
          child: Text("Welcome!",style: TextStyle(fontSize: 20,color: Color(0xffD8D8D8)),)
        ),
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          SizedBox(width: 10,),
          Icon(
            Icons.person_rounded,
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Text("Alex",style: TextStyle(fontSize: 18,color: Color(0xff001833)),),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 727,
            decoration: BoxDecoration(
                color: Color(0xff324A59),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Select your coffee",style: TextStyle(fontSize: 18,color: Color(0xffD8D8D8))),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 590,
                  width: 600,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Image(
                                image: AssetImage("images/img_4.png"),
                                width: 200,
                                height: 140),
                            Text(("Americano")),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => orderOptions()),
                                );
                              },
                              child: Image(
                                  image: AssetImage("images/img_5.png"),
                                  width: 200,
                                  height: 140),
                            ),
                            Text(("Cappuccino")),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: Column(
                          children: [
                            Image(
                                image: AssetImage("images/img_6.png"),
                                width: 200,
                                height: 140),
                            Text(("Latte")),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: Column(
                          children: [
                            Image(
                                image: AssetImage("images/img_7.png"),
                                width: 200,
                                height: 140),
                            Text(("Flat White")),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: Column(
                          children: [
                            Image(
                                image: AssetImage("images/img_8.png"),
                                width: 200,
                                height: 140),
                            Text(("Raf")),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Image(
                                image: AssetImage("images/img_9.png"),
                                width: 200,
                                height: 140),
                            Text(("Espresso")),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.card_travel_rounded),
                        Icon(
                          Icons.card_giftcard,
                          color: Color((0xffD8D8D8)),
                        ),
                        Icon(Icons.camera_roll_outlined,
                            color: Color((0xffD8D8D8))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
