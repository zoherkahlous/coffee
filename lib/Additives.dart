import 'package:coffee/Barista.dart';
import 'package:coffee/Coffee_country.dart';
import 'package:coffee/Coffee_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Additives extends StatelessWidget {
  const Additives({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => coffeeType()),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            "Coffee lover assemblage",
            style: TextStyle(fontSize: 18, color: Color(0xff001833)),
          ),
        ),
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Color(0xff001833),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right:180),
            child: Text(
              "Select additives",
              style: TextStyle(color: Color(0xff001833), fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Ceylon cinnamon",
                    style: TextStyle(color: Color(0xff0A84FF), fontSize: 18)),

                Padding(
                  padding: const EdgeInsets.only(left: 180.0),
                  child: Icon(Icons.check,color: Color(0xff007AFF)),
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xffF4F5F7),
            height: 20,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Text("Grated chocolate",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),

              ],
            ),
          ),
          Divider(
            color: Color(0xffF4F5F7),
            height: 20,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Text("Liquid chocolate",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),

              ],
            ),
          ),
          Divider(
            color: Color(0xffF4F5F7),
            height: 20,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Text("Marshmallow",
                    style: TextStyle(color: Color(0xff007AFF), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 220.0),
                  child: Icon(Icons.check,color: Color(0xff007AFF)),
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xffF4F5F7),
            height: 20,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Text("Whipped cream",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),

              ],
            ),
          ),
          Divider(
            color: Color(0xffF4F5F7),
            height: 20,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Text("Cream",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),

              ],
            ),
          ),
          Divider(
            color: Color(0xffF4F5F7),
            height: 20,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Text("Nutmeg",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),

              ],
            ),
          ),
          Divider(
            color: Color(0xffF4F5F7),
            height: 20,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Text("Ice cream",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),

              ],
            ),
          ),
          Divider(
            color: Color(0xffF4F5F7),
            height: 20,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),


          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 220),
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
    );
  }
}
