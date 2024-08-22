import 'package:coffee/Coffee_country.dart';
import 'package:coffee/Designer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Barista extends StatelessWidget {
  const Barista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Designer()),
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
            padding: const EdgeInsets.only(top: 20.0, right: 180),
            child: Text(
              "Select a barista",
              style: TextStyle(color: Color(0xff001833), fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 350,
              height: 81,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: ListTile(
                trailing: CircleAvatar(
                  maxRadius: 10,
                  minRadius: 10,
                  backgroundColor: Colors.green,
                ),
                leading: Image(
                  image: AssetImage("images/img_13.png"),
                ),
                title: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => coffeeCountry()),
                    );
                  },
                  child: Text(
                    "Victor",
                    style: TextStyle(color: Color(0xff09051C), fontSize: 20),
                  ),
                ),
                subtitle: Text(
                  "Top barista",
                  style: TextStyle(color: Color(0xff3B3B3B), fontSize: 17),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 350,
              height: 81,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: ListTile(
                trailing: CircleAvatar(
                  maxRadius: 10,
                  minRadius: 10,
                  backgroundColor: Colors.green,
                ),
                leading: Image(
                  image: AssetImage("images/img_14.png"),
                ),
                title: Text(
                  "Andrey",
                  style: TextStyle(color: Color(0xff09051C), fontSize: 20),
                ),
                subtitle: Text(
                  "Top barista",
                  style: TextStyle(color: Color(0xff3B3B3B), fontSize: 17),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 350,
              height: 81,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: ListTile(
                trailing: CircleAvatar(
                  maxRadius: 10,
                  minRadius: 10,
                  backgroundColor: Colors.red,
                ),
                leading: Image(
                  image: AssetImage("images/img_15.png"),
                ),
                title: Text(
                  "Vera",
                  style: TextStyle(color: Color(0xff3B3B3B), fontSize: 20),
                ),
                subtitle: Text(
                  "Barista",
                  style: TextStyle(color: Color(0xff3B3B3B), fontSize: 17),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,top: 300),
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
