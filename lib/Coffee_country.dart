import 'package:coffee/Barista.dart';
import 'package:coffee/Coffee_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class coffeeCountry extends StatelessWidget {
  const coffeeCountry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Barista()),
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
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => coffeeType()),
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
            padding: const EdgeInsets.only(top: 20.0, right: 70),
            child: Text(
              "Select country and sort of coffee",
              style: TextStyle(color: Color(0xff001833), fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Brazil",
                    style: TextStyle(color: Color(0xff0A84FF), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 280.0),
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
                Text("Colombia",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 260.0),
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
                Text("Costa Rica",
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
                Text("Jamaica",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 265.0),
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
                Text("Yemen",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 275.0),
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
                Text("Kenya",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 280.0),
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
                Text("India",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 290.0),
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
                Text("Tanzania",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 260.0),
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
                Text("Hawaii",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 275.0),
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
                Text("Indonesia",
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
                Text("Ethiopia",
                    style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                Padding(
                  padding: const EdgeInsets.only(left: 260.0),
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
            padding: const EdgeInsets.only(left: 30.0,top: 50),
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
