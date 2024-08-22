
import 'package:flutter/material.dart';

import 'Authouraization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

PageController controller = PageController();

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,


      home: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Image.asset(
                    "images/img.png",
                  ),
                  Positioned(
                      top: -120,
                      child: Image.asset(
                        "images/Vector.png",
                      )),
                  Positioned(
                      top: 200,
                      child: Text(
                        "Magic Coffee",
                        style: TextStyle(
                            fontSize: 44,
                            color: Color(0xffFFFFFF),
                            fontStyle: FontStyle.italic),
                      )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Feel yourself like",
                style: TextStyle(fontSize: 28, color: Color(0xff181D2D)),
              ),
              Text(
                "a barista!",
                style: TextStyle(fontSize: 28, color: Color(0xff181D2D)),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "Magic coffee on order.",
                style: TextStyle(fontSize: 18, color: Color(0xffAAAAAA)),
              ),
              SizedBox(height: 40),
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
                      color: Color(0xffAAAAAA),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color(0xffAAAAAA),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap:(){

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Authorization()),
                      );
                    },
                    child: Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff324A59)),
                        child: Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
