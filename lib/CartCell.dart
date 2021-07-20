import 'package:flutter/material.dart';

class CartCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child: Container(
          child: Row(
            children: <Widget>[
              Image.asset(
                'images/food.jpg',
                width: 100,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 20),
                      Text(
                        'Buffalo Chowmine',
                        maxLines: 3,
                        textDirection: TextDirection.rtl,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text('Fast Food', style: TextStyle(fontSize: 15)),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          Text('Inr: 300',
                              style: TextStyle(fontSize: 15)),
                          SizedBox(width: 150),
                          Icon(
                            Icons.delete,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
