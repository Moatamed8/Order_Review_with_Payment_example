import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool isRememberMe = false;
  bool isRememberdef = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name on Card",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.5),
                                    offset: Offset(0, 3),
                                  ),
                                ]),
                            child: TextFormField(
                              key: ValueKey('name'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                border: InputBorder.none,
                                hintText: 'Jane A.Doe',
                                labelStyle: TextStyle(
                                    fontSize: 18, color: Colors.black),
                                hintStyle:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Invalid Card Name';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Card Number",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.5),
                                    offset: Offset(0, 3),
                                  ),
                                ]),
                            child: TextFormField(
                              key: ValueKey('name'),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.videogame_asset_sharp),
                                contentPadding: EdgeInsets.all(10),
                                border: InputBorder.none,
                                hintText: 'Jane A.Doe',
                                labelStyle: TextStyle(
                                    fontSize: 18, color: Colors.black),
                                hintStyle:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Invalid Card Name';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Expiration",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(.5),
                                          offset: Offset(0, 3),
                                        ),
                                      ]),
                                  child: TextField(
                                    key: ValueKey('name'),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(right: 5),
                                      border: InputBorder.none,
                                      hintText: '02/22',
                                      labelStyle: TextStyle(
                                          fontSize: 18, color: Colors.black),
                                      hintStyle: TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "CVV",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(.5),
                                            offset: Offset(0, 3),
                                          ),
                                        ]),
                                    child: TextFormField(
                                      key: ValueKey('name'),
                                      decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(right: 5),
                                        border: InputBorder.none,
                                        labelStyle: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                        hintStyle: TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                      ),
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Invalid Card Name';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                  alignment: Alignment.bottomCenter,
                                  child: Icon(Icons.info)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 10),
                      child: Row(
                        children: [
                          Checkbox(
                            value: isRememberMe,
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                isRememberMe = !isRememberMe;
                              });
                            },
                          ),
                          Text("Save this Card",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 10),
                      child: Row(
                        children: [
                          Checkbox(
                            value: isRememberdef,
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                isRememberdef = !isRememberdef;
                              });
                            },
                          ),
                          Text("Make a default credit card",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Your card won't be changed until\n you review your order",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 100,
                alignment: Alignment.center,
                color: Colors.blue,
                width: double.infinity,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    child: Text(
                      "Next Review Order",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        primary: Colors.redAccent),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
