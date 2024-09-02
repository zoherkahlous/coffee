import 'package:coffee/Recommendation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Recommendation()),
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
          Padding(
            padding: const EdgeInsets.only(right: 250.0),
            child: Text("My order",style: TextStyle(color: Color(0xff001833),fontSize: 20),),
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
                trailing: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Text("BYN",style: TextStyle(color: Color(0xff001833),fontSize: 16),),
                      Text("3.00",style: TextStyle(color: Color(0xff001833),fontSize: 16),),
                    ],
                  ),
                ),
                leading: Image(
                  image: AssetImage("images/img_16.png"),
                ),
                title: Text(
                  "Americano",
                  style: TextStyle(color: Color(0xff09051C), fontSize: 20),
                ),
                subtitle: Text(
                  "single | iced | medium | full ice",
                  style: TextStyle(color: Color(0xff3B3B3B), fontSize: 10),
                ),
              ),
            ),
          ),
          Row(
            children:[ Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 320,
                height: 81,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ListTile(
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      children: [
                        Text("BYN",style: TextStyle(color: Color(0xff001833),fontSize: 16),),
                        Text("3.00",style: TextStyle(color: Color(0xff001833),fontSize: 16),),
                      ],
                    ),
                  ),
                  leading: Image(
                    image: AssetImage("images/img_17.png"),
                  ),
                  title: Text(
                    "Cappuccino",
                    style: TextStyle(color: Color(0xff09051C), fontSize: 20),
                  ),
                  subtitle: Text(
                    "single | iced | medium | full ice",
                    style: TextStyle(color: Color(0xff3B3B3B), fontSize: 10),
                  ),
                ),
              ),
            ),
              Container(
                height: 81,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFFE5E5)
                ),
                child: Icon(Icons.delete,color: Color(0xffFF3030),),
              )
    ]
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
                trailing: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Text("BYN",style: TextStyle(color: Color(0xff001833),fontSize: 16),),
                      Text("3.00",style: TextStyle(color: Color(0xff001833),fontSize: 16),),
                    ],
                  ),
                ),
                leading: Image(
                  image: AssetImage("images/img_7.png"),
                ),
                title: Text(
                  "Flat White",
                  style: TextStyle(color: Color(0xff09051C), fontSize: 20),
                ),
                subtitle: Text(
                  "single | iced | medium | full ice",
                  style: TextStyle(color: Color(0xff3B3B3B), fontSize: 10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0,top: 290),
            child: Row(
              children: [
                Column(
                  children: [
                    InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) =>
                                payment(title: ' Order payment'),
                          );
                        },
                        child: Text("Total Price",style: TextStyle(color: Color(0xff001833),fontSize: 12),)),
                    Text("BYN 9.00",style: TextStyle(color: Color(0xff001833),fontSize: 22),),
                  ],
                ),
                SizedBox(width: 20,),
                Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Color(0xff324A59),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Icon(Icons.shopping_cart,color: Color(0xffFFFFFF),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Text(
                            "Next",
                            style: TextStyle(color: Color(0xffFFFFFF), fontSize: 14),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class payment extends StatelessWidget {
  final String title;

  const payment({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40))
      ),// يمكنك تعديل الارتفاع حسب الحاجة
     
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff001833)
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff001833)
                  ),
                  child: Icon(Icons.delete,color: Color(0xffFFFFFF),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Alex",style: TextStyle(color: Color(0xff001833),fontSize: 12),),
                      Text("Magic Coffee store\nBradford BD1 1PR ",style: TextStyle(color: Color(0xff001833),fontSize: 10),),
                    ],
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 350,
                height: 81,
                decoration: BoxDecoration(
                    color: Color(0xffF7F8FB),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ListTile(
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Image(
                      image: AssetImage("images/img_18.png"),
                    ),
                  ),
                  leading: Icon(Icons.radio_button_checked,color: Color(0xff001833),),
                  title: Text(
                    "Online payment",
                    style: TextStyle(color: Color(0xff09051C), fontSize: 14),
                  ),
                  subtitle: Text(
                    "Assist Belarus",
                    style: TextStyle(color: Color(0xff3B3B3B), fontSize: 10),
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
                    color: Color(0xffF7F8FB),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ListTile(
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Image(
                      image: AssetImage("images/img_19.png"),
                    ),
                  ),
                  leading: Icon(Icons.circle_outlined,color: Color(0xff001833),),
                  title: Text(
                    "Credit Card",
                    style: TextStyle(color: Color(0xff09051C), fontSize: 14),
                  ),
                  subtitle: Text(
                    "2540 xxxx xxxx 2648",
                    style: TextStyle(color: Color(0xff3B3B3B), fontSize: 10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text("Amount",
                      style: TextStyle(color: Color(0xff001833), fontSize: 18)),
                  SizedBox(width: 190),
                  Text("BYN 9.00",
                      style: TextStyle(color: Color(0xff001833), fontSize: 18)),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 30),
              child: Row(
                children: [
                  Column(
                    children: [
                      InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) =>
                                  payment(title: ' Order payment'),
                            );
                          },
                          child: Text("Total Price",style: TextStyle(color: Color(0xff001833),fontSize: 12),)),
                      Text("BYN 9.00",style: TextStyle(color: Color(0xff001833),fontSize: 22),),
                    ],
                  ),
                  SizedBox(width: 20,),
                  Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Color(0xff324A59),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Icon(Icons.shopping_cart,color: Color(0xffFFFFFF),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              "Pay Now",
                              style: TextStyle(color: Color(0xffFFFFFF), fontSize: 14),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}