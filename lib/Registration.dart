import 'package:coffee/Forget_password.dart';
import 'package:coffee/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Authouraization.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Authorization()),
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
                "Sign in",
                style: TextStyle(fontSize: 22, color: Color(0xff181D2D)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text("Create an account here",
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
                        labelText: 'Create an account here',
                        icon: Icon(
                          Icons.manage_accounts_rounded,
                          color: Color(0xff001833),
                        ),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Mobile Number',
                        icon: Icon(
                          Icons.phone_android_sharp,
                          color: Color(0xff001833),
                        ),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
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
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        icon: Icon(Icons.lock_outline_rounded,
                            color: Color(0xff001833)),
                        border: UnderlineInputBorder(),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined,
                            color: Color(0xff001833)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 20),
              child: Text(
                "By signing up you agree with our Terms of Use",
                style: TextStyle(fontSize: 14, color: Color(0xff324A59)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Forget_pass()),
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
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 100),
              child: Row(
                children: [
                  Text(
                    "Already a member?",
                    style: TextStyle(fontSize: 14, color: Color(0xffAAAAAA)),
                  ),
                  Text(" Sign up",
                      style: TextStyle(fontSize: 14, color: Color(0xff324A59))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
