import 'dart:core';

import 'package:coffee/order_options.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Barista.dart';

class Designer extends StatefulWidget {
  const Designer({Key? key}) : super(key: key);

  @override
  State<Designer> createState() => _DesignerState();
}

class _DesignerState extends State<Designer> {
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
              MaterialPageRoute(builder: (context) => orderOptions()),
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
                    padding: const EdgeInsets.only(left: 290.0),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) =>
                              MyBottomSheet(title: ' What type of milk do you prefer?'),
                        );
                      },
                      child: Text(
                        'Select',
                        style: TextStyle(fontSize: 18),
                      ),
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
                Text("Syrup",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                    padding: const EdgeInsets.only(left: 280.0),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) =>
                              TwoBottomSheet(title: 'What flavor of syrup do you prefer?'),
                        );
                      },
                      child: Text(
                        'Select',
                        style: TextStyle(fontSize: 18),
                      ),
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
                Text("Additives",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 270.0),
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
                Text("ice",
                    style: TextStyle(color: Color(0xffD8D8D8), fontSize: 16)),
                Padding(
                  padding: const EdgeInsets.only(left: 170.0),
                  child: Image(
                    image: AssetImage("images/img_12.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Image(
                    image: AssetImage("images/img_12.png"),
                  ),
                ),
                Image(
                  image: AssetImage("images/img_12.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Image(
                    image: AssetImage("images/img_12.png"),
                  ),
                ),
                Image(
                  image: AssetImage("images/img_12.png"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0, bottom: 10),
            child: Row(
              children: [
                Text(
                  "Total Amount",
                  style: TextStyle(color: Color(0xff001833), fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200.0),
                  child: Text("BYN 9.00",
                      style: TextStyle(color: Color(0xff001833), fontSize: 16)),
                ),
              ],
            ),
          ),
          Container(
              width: 370,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Color(0xff324A59),
              ),
              child: Center(
                  child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Barista()),
                  );
                },
                child: Text(
                  "Next",
                  style: TextStyle(color: Color(0xffFFFFFF), fontSize: 14),
                ),
              ))),
        ],
      ),
    );
  }
}

class MyBottomSheet extends StatelessWidget {
  final String title;

  const MyBottomSheet({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // يمكنك تعديل الارتفاع حسب الحاجة
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff3C3C43)
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(child: Text("None",style: TextStyle(color: Color(0xff001833),fontSize: 20),)),
            Divider(
              color: Color(0xffF4F5F7),
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Center(child: Text("Cow's",style: TextStyle(color: Color(0xff001833),fontSize: 20),)),
            Divider(
              color: Color(0xffF4F5F7),
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Center(child: Text("Lactose-free",style: TextStyle(color: Color(0xff001833),fontSize: 20),)),
            Divider(
              color: Color(0xffF4F5F7),
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Center(child: Text("Skimmed",style: TextStyle(color: Color(0xff001833),fontSize: 20),)),
            Divider(
              color: Color(0xffF4F5F7),
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Center(child: Text("Vegetable",style: TextStyle(color: Color(0xff001833),fontSize: 20),)),
            // أضف هنا محتوى "BottomSheet"
          ],
        ),
      ),
    );
  }
}

class TwoBottomSheet extends StatelessWidget {
  final String title;

  const TwoBottomSheet({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // يمكنك تعديل الارتفاع حسب الحاجة
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff3C3C43)
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(child: Text("None",style: TextStyle(color: Color(0xff001833),fontSize: 20),)),
            Divider(
              color: Color(0xffF4F5F7),
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Center(child: Text("Amaretto",style: TextStyle(color: Color(0xff001833),fontSize: 20),)),
            Divider(
              color: Color(0xffF4F5F7),
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Center(child: Text("Coconut",style: TextStyle(color: Color(0xff001833),fontSize: 20),)),
            Divider(
              color: Color(0xffF4F5F7),
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Center(child: Text("Vanilla",style: TextStyle(color: Color(0xff001833),fontSize: 20),)),
            Divider(
              color: Color(0xffF4F5F7),
              height: 20,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Center(child: Text("Caramel",style: TextStyle(color: Color(0xff001833),fontSize: 20),)),
            // أضف هنا محتوى "BottomSheet"
          ],
        ),
      ),
    );
  }
}
