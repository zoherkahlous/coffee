import 'package:coffee/Forget_password.dart';
import 'package:coffee/Startup_screen.dart';
import 'package:coffee/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Registration.dart';

class TwoFactor extends StatelessWidget {
  const TwoFactor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Forget_pass()),
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
                "Verification",
                style: TextStyle(fontSize: 22, color: Color(0xff181D2D)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text("Enter the OTP code we sent you",
                  style: TextStyle(fontSize: 14, color: Color(0xffAAAAAA))),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(

                children: [

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffAAAAAA),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffAAAAAA),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffAAAAAA),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffAAAAAA),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130.0, top: 20),
              child: Text("Resend in 00:30",
                  style: TextStyle(fontSize: 14, color: Color(0xffAAAAAA))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Startup_Screen()),
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
