import 'package:flutter/material.dart';
import 'CartCell.dart';
import 'PaymentScreen.dart';

const bgColor = Color.fromRGBO(250, 240, 240, 1.0);

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text('Proceed payment...'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: 10,
                  //scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return CartCell();
                  },
                ),
              ),
            ),
            GestureDetector(
              onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen(), fullscreenDialog: true));
            },
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Proceed (Inr: 2003)',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}

