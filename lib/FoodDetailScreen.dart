import 'package:eatanytime/CartScreen.dart';
import 'package:flutter/material.dart';

class FoodDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buffalo Chowmein'),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  print('Cart Pressed');
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CartScreen();
                  }));
                },
                child: Icon(Icons.shopping_cart),
              )),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Card(child: Image.asset('images/food.jpg')),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text('3 km   |   '),
                    Icon(Icons.directions_bike),
                    Text('  30 minute'),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                    'Its made by Italian chef. They have marinated buffalo for 30 minutes to spread the aroma of Indian ingredients.'),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    SizedBox(width: 40),
                    Text('Quantity:', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 100),
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {},
                    ),
                    Text(
                      '0',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.deepOrangeAccent,
                  child: Center(
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
