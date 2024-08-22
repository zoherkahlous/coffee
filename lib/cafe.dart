import 'package:coffee/Menu.dart';
import 'package:coffee/Startup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cafe extends StatelessWidget {
  const cafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Startup_Screen()),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 450,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/img_3.png'), fit: BoxFit.cover)),
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    color: Color(0xff324A59),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 100),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Menu()),);
                    },
                    child: Text(
                      "Select Magic Coffee store",
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 14),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 100,
                  child: Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50))),
                    child: Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 30, right: 30),
                        child: Column(
                          children: [
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
                                    Icons.card_giftcard_rounded,
                                    color: Color(0xffFFFFFF),
                                  ),
                                  SizedBox(width: 25),
                                  Text(
                                    "Bradford BD1 1PR",
                                    style: TextStyle(color: Color(0xffFFFFFF)),
                                  ),
                                  SizedBox(width: 130),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Color(0xffFFFFFF))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
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
                                    Icons.card_giftcard_rounded,
                                    color: Color(0xffFFFFFF),
                                  ),
                                  SizedBox(width: 25),
                                  Text(
                                    "Bradford BD4 7SJ",
                                    style: TextStyle(color: Color(0xffFFFFFF)),
                                  ),
                                  SizedBox(width: 130),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Color(0xffFFFFFF))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
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
                                    Icons.card_giftcard_rounded,
                                    color: Color(0xffFFFFFF),
                                  ),
                                  SizedBox(width: 25),
                                  Text(
                                    "Bradford BD1 4RN",
                                    style: TextStyle(color: Color(0xffFFFFFF)),
                                  ),
                                  SizedBox(width: 130),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Color(0xffFFFFFF))
                                ],
                              ),
                            ),
                          ],
                        )),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
