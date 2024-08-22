import 'package:coffee/cafe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Startup_Screen extends StatelessWidget {
  const Startup_Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/img_2.png'), fit: BoxFit.cover)),
            child: SingleChildScrollView(
              child: Column(

                children: [


                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Image.asset(
                        "images/Vector.png",
                      ),

                      Positioned(
                          bottom: 250,

                          child: InkWell(
                            onTap: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => cafe()),
                              );
                            },
                            child: Image.asset(
                              "images/img_1.png",
                              width: 300,
                            ),
                          )),
                    ],
                  ),







                ],
              ),
            )
        )
    );


  }
}
