import 'package:flutter/material.dart';
import 'FoodDetailScreen.dart';

class MenuCell extends StatelessWidget {

  MenuCell({this.selectedCell, this.menuItem, this.menuIcon});
  String menuItem;
  String menuIcon;
  Function selectedCell;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: selectedCell,
        child: Card(
          margin: EdgeInsets.only(bottom: 0),
          //color: Colors.orange[100],
          child: Container(
            child: Row(
              children: <Widget>[
                Image.asset(
                  menuIcon,
                  width: 150,
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: 20),
                        Text(
                          menuItem,
                          maxLines: 3,
                          textDirection: TextDirection.rtl,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text('Fast Food', style: TextStyle(fontSize: 15)),
                        SizedBox(height: 30),
                        Row(
                          children: <Widget>[
                            //SizedBox(height: 30),
                            Text('km: 3',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 15)),
                            SizedBox(width: 100),
                            Container(
                                color: Colors.green,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text('4.2',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )),
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
      ),
    );
  }
}
