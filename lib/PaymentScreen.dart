import 'package:eatanytime/CartScreen.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Text('Total Price:   1234 INR' , style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 40),
                Text('Address:', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('A4, 1802'),
                Text('Gardenia Glory'),
                Text('Sector 46, Noida'),
                Text('Uttar Pradesh, India'),
                SizedBox(height: 60),
                Text('Card Number', style: TextStyle(fontWeight: FontWeight.bold)),
                TextField(
                  decoration: InputDecoration(
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Text('Valid Until', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 100),
                    Text('CVV', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text('Card Holder Name', style: TextStyle(fontWeight: FontWeight.bold)),
                TextField(
                  decoration: InputDecoration(
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text('Save card data for future payments'),
                    SizedBox(width: 40),
                    Switch(
                      value: true,
                      activeColor: Colors.deepOrangeAccent,
                      onChanged: (value) {
//                        setState(() {
//                          _switchValue = value;
//                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.deepOrangeAccent,
                  child: Center(
                    child: Text(
                      'Pay',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
