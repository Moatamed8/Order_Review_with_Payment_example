import 'package:flutter/material.dart';

import 'screens/review.dart';
import 'screens/payment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool isSelected = false;

  List _pages = [
    Payment(),
    Payment(),
    Review(),
  ];

  void _selectConatiner(int index,) {
    setState(() {
      _counter = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                "doxen",
                textAlign: TextAlign.left,
              ),
              backgroundColor: Colors.redAccent,
              leading: Icon(Icons.supervised_user_circle),
              actions: [
                Icon(Icons.shopping_cart),
                CircleAvatar(
                  radius: 10,
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 10,
                )
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: Container(
                  color: Colors.redAccent,
                ),
              ),
            ),
            body: Container(
              padding: EdgeInsets.only(top: 25),
              child: _pages[_counter],
            ),
          ),
        ),
        Positioned(
          top: 100,
          left: 20,
          right: 20,
          child: Container(
            alignment: Alignment.center,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    offset: Offset(0, 3),
                  ),
                ]),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Material(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        topLeft: Radius.circular(15)),
                    child: InkWell(
                      onTap: () => _selectConatiner(0),
                      child: Container(
                        width: 90,
                        decoration: BoxDecoration(
                          color:_counter==0? Colors.blue:Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              topLeft: Radius.circular(15)),

                        ),


                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: Text("1",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color:_counter==0? Colors.white:Colors.black,
                                      decoration: TextDecoration.none)),
                            ),
                            Text("shipping",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color:_counter==0? Colors.white:Colors.black,
                                    decoration: TextDecoration.none)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Material(
                    child: InkWell(
                        onTap: () => _selectConatiner(1),
                        child: Container(
                          width: 90,
                          color:_counter==1? Colors.blue:Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 3),
                                child: Text("2",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color:_counter==1? Colors.white:Colors.black,
                                        decoration: TextDecoration.none)),
                              ),
                              Text("Payment",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color:_counter==1? Colors.white:Colors.black,
                                      decoration: TextDecoration.none)),
                            ],
                          ),
                        )),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Material(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      child: InkWell(
                        onTap: () => _selectConatiner(2),
                        child: Container(
                          width: 90,
                          decoration: BoxDecoration(
                            color:_counter==2? Colors.blue:Colors.white,

                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 3),
                                child: Text("3",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color:_counter==2? Colors.white:Colors.black,
                                        decoration: TextDecoration.none)),
                              ),
                              Text("Review",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color:_counter==1? Colors.white:Colors.black,
                                      decoration: TextDecoration.none)),
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        )
      ],
    );
  }
}
