import 'package:coffee/Barista.dart';
import 'package:coffee/Coffee_country.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Additives.dart';

class coffeeType extends StatelessWidget {
  const coffeeType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => coffeeCountry()),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            "Select country",
            style: TextStyle(fontSize: 18, color: Color(0xff001833)),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Additives()),
              );
            },
            child: Icon(
              Icons.shopping_cart,
              color: Color(0xff001833),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right:150),
            child: Text(
              "Select a sort of coffee",
              style: TextStyle(color: Color(0xff001833), fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Santos ",
                    style: TextStyle(color: Color(0xff0A84FF), fontSize: 18)),

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
                Text("Bourbon santos",
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
                Text("Minas",
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
                Text("Rio",
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
                Text("Canilon",
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
                Text("Flat beat",
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
            padding: const EdgeInsets.only(left: 30.0,top: 320),
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
