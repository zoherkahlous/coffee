import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Designer.dart';
import 'Menu.dart';

class orderOptions extends StatefulWidget {
  const orderOptions({Key? key}) : super(key: key);

  @override
  State<orderOptions> createState() => _orderOptionsState();
}

class _orderOptionsState extends State<orderOptions> {
  int i = 0;
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Menu()),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            "Order",
            style: TextStyle(fontSize: 20, color: Color(0xff001833)),
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
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 340,
              height: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Image(
                        image: AssetImage("images/img_5.png"),
                        width: 200,
                        height: 140),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xffF7F8FB),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Text(
                  "Cappuccino",
                  style: TextStyle(color: Color(0xff001833), fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 180),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xffCDCBCB)),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                i++;
                              });
                            },
                            icon: Icon(Icons.add)),
                        Text("$i"),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                i--;
                              });
                            },
                            icon: Icon(Icons.remove)),
                      ],
                    ),
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
                Text("Ristretto",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Container(
                    width: 70,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xffCDCBCB)),
                    child: Center(child: Text("One")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Container(
                    width: 70,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xffCDCBCB)),
                    child: Center(child: Text("Two")),
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
                Text("Onsite / Takeaway",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 170.0),
                  child: Icon(
                    Icons.coffee_sharp,
                    color: Color(0xffD8D8D8),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Icon(
                    Icons.coffee_maker,
                    color: Colors.black,
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
                Text(" Volume, ml",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 160.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.local_drink_outlined,
                        color: Color(0xffD8D8D8),
                      ),
                      Text("250 "),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.local_drink_outlined,
                        color: Color(0xff000000),
                        size: 35,
                      ),
                      Text("350 "),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.local_drink_outlined,
                        color: Color(0xffD8D8D8),
                        size: 45,
                      ),
                      Text("450 "),
                    ],
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
                Text("Prepare by a certain time today?",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: Switch(
                    activeColor: Colors.green,
                    value: _isOn,
                    onChanged: (value) {
                      setState(() {
                        _isOn = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 290, bottom: 7),
            child: Container(
              width: 70,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xff767680)),
              child: Center(child: Text("18 : 10")),
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
              color: Color(0xffC58BF2),
            ),
            child: Row(
              children: [
                SizedBox(width: 5),
                Icon(
                  Icons.filter_list,
                  color: Color(0xff130F26),
                ),
                SizedBox(width: 25),
                Text(
                  "Coffee lover assemblage",
                  style: TextStyle(color: Color(0xffFFFFFF)),
                ),
                SizedBox(width: 130),
                Icon(Icons.arrow_forward_ios, color: Color(0xffFFFFFF))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Total Amount",
                  style: TextStyle(color: Color(0xff001833), fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200.0),
                  child: Text("BYN 3.00",
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
                        MaterialPageRoute(builder: (context) => Designer()),
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
/*


 */