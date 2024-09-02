import 'dart:core';

import 'package:coffee/Additives.dart';
import 'package:coffee/My_order.dart';
import 'package:coffee/order_options.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Barista.dart';

class Recommendation extends StatefulWidget {
  const Recommendation({Key? key}) : super(key: key);

  @override
  State<Recommendation> createState() => _DesignerState();
}

class _DesignerState extends State<Recommendation> {
  double _slidervalue = 0;
  double min = 0.0;
  double max = 1.0;
  bool _showBottomSheet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Additives()),
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
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyOrder()),
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
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Text("Select a barista",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 220.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff7B6F72),
                  ),
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
                Text("Coffee type",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: Slider(
                    value: _slidervalue,
                    min: 0,
                    max: 100,
                    divisions: 10,
                    label: _slidervalue.toStringAsFixed(1),
                    onChanged: (newValue) {
                      setState(() {
                        _slidervalue = newValue;
                      });
                    },
                  ),
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
                Text("Coffee sort",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 250.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff7B6F72),
                  ),
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
                Text("Roasting",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child:
                      Icon(FontAwesomeIcons.fire, size: 25, color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child:
                      Icon(FontAwesomeIcons.fire, size: 25, color: Colors.grey),
                ),
                Icon(FontAwesomeIcons.fire, size: 25, color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Icon(FontAwesomeIcons.fire,
                      size: 40, color: Colors.black),
                ),
                Icon(FontAwesomeIcons.fire, size: 40, color: Colors.black),
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
                Text("Grinding",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                    padding: const EdgeInsets.only(left: 180.0),
                    child: Image(
                      image: AssetImage("images/img_11.png"),
                    )),
                Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Image(
                      image: AssetImage("images/img_10.png"),
                    )),
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
                Text("Milk",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 280),
                  child: Text(
                    'Select',
                    style: TextStyle(fontSize: 18),
                  ),
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
                Text("Syrup",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 270.0),
                  child: Text(
                    'Select',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                  color: Color(0xffC58BF2),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
              child: Column(
                children: [
                  Text(
                    "Coffee lover's encyclopedia",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "A blend of 90% Arabica and 10% Robusta is considered a classic Italian espresso. We do not recommend creating a blend with a robusta content of more than 30%.",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 15,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      children: [
                        Text(
                          "Skip",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(width: 120),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xff324A59),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(4),
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 120,),
                        Text(
                          "Next",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
