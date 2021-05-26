import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  Widget total() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 4),
                child: Text(
                  "Total",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, top: 4),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 15),
            child: totalItem(),
          )
        ],
      ),
    );
  }

  Widget totalItem() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              offset: Offset(1, 1),
            ),
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SubTotal",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "\$402.50",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Taxes",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "\$0.00",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shipping",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "FREE",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$402.50",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget paymentDeliveryInfo() {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              offset: Offset(1, 1),
            ),
          ]),
      child: Row(
        children: [
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Standerd(2-5 Bussiness Days)",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20),
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                  alignment: Alignment.center,
                  child: Icon(Icons.arrow_forward_ios))),
        ],
      ),
    );
  }

  Widget deliveryCard() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 4),
                child: Text(
                  "Delivery",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, top: 4),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: paymentDeliveryInfo(),
          )
        ],
      ),
    );
  }

  Widget paymentInfo() {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              offset: Offset(1, 1),
            ),
          ]),
      child: Row(
        children: [
          Expanded(flex: 1, child: Icon(Icons.videogame_asset_sharp)),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "End in 1234",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20),
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                  alignment: Alignment.center,
                  child: Icon(Icons.arrow_forward_ios))),
        ],
      ),
    );
  }

  Widget shipBillCard(tile, desc, price, phone) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              offset: Offset(1, 1),
            ),
          ]),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    tile,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    desc,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    price,
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    phone,
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                SizedBox(height: 13),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                  alignment: Alignment.center,
                  child: Icon(Icons.arrow_forward_ios))),
        ],
      ),
    );
  }

  Widget orderSummary(
      String title, double dprice, double price, String imageurl) {
    return Container(
      height: 130,
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Container(
              child: Image.network(imageurl),
            ),
            height: 120,
            width: 150,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title, // "Doxen Team Lorem lpsum \n Widget (Small)",
                  textAlign: TextAlign.start,

                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Text(
                        "\$${dprice}",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "\$${price}",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Qty:1",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.delete),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget shipItem() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 4),
                child: Text(
                  "Ship and Bill to",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, top: 4),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 15),
            child: shipBillCard(
                "Jane Doe", "123 Main Street", "Los Angeles", "12345-6789"),
          )
        ],
      ),
    );
  }

  Widget paymentCard() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 4),
                child: Text(
                  "Payment Info",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, top: 4),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: paymentInfo(),
          )
        ],
      ),
    );
  }

  Widget conItem() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 4),
                child: Text(
                  "Order Summary",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, top: 4),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "2 items",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    offset: Offset(1, 1),
                  ),
                ]),
            child: Column(
              children: [
                orderSummary(
                    "Doxen Team Lorem lpsum \n Widget (Small)",
                    103.50,
                    143.50,
                    "https://media.istockphoto.com/photos/backpack-isolated-on-a-white-background-picture-id185332097?k=6&m=185332097&s=612x612&w=0&h=Df27IYPnXmgsUpBwDynCs_fBnzLqr7PyE0NvyVPHpes="),
                Divider(
                  color: Colors.black,
                ),
                orderSummary("Ganon Bag Six Three", 299.00, 399.00,
                    "https://thumbs.dreamstime.com/b/gold-watch-leather-strap-brown-white-face-31297366.jpg"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 110),
            child: ListView(
              children: [
                conItem(),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(child: shipItem()),
                ),
                paymentCard(),
                deliveryCard(),
                Container(
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(
                    "I have a vaucher code",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                total(),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(color: Colors.grey, fontSize: 22),
                    ),
                    Text(
                      "\$402.50",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Purchase",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      primary: Colors.redAccent),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
