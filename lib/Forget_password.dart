import 'package:coffee/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Registration.dart';
import 'Two_factor_verification.dart';

class Forget_pass extends StatelessWidget {
  const Forget_pass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Registration()),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 40),
              child: Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 22, color: Color(0xff181D2D)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text("Enter your email address",
                  style: TextStyle(fontSize: 14, color: Color(0xffAAAAAA))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 50),
              child: Container(
                width: 350,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email address',
                        icon: Icon(
                          Icons.email,
                          color: Color(0xff001833),
                        ),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TwoFactor()),
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
            ),

          ],
        ),
      ),
    );
  }
}
