import 'dart:convert';
import 'package:eatanytime/FoodDetailScreen.dart';
import 'package:flutter/material.dart';
import 'MenuCell.dart';
import 'FoodCategoryCell.dart';
import 'MenuDrawer.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

const bgColor = Color.fromRGBO(250, 240, 240, 1.0);
var categoryList = [
  'Veg',
  'Nonveg',
  'Italian',
  'Chinees',
  'South Indian',
  'Fast Food'
];

var menuItemList = [
  'Buffalo Chowmine',
  'Pizza',
  'Burger',
  'Sandwitch',
  'South Indian',
  'Fast Food'
];
var menuIconList = [
  'images/food.jpg',
  'images/pizza.jpg',
  'images/burger.jpg',
  'images/sandwitch.jpg',
  'images/food.jpg',
  'images/food.jpg'
];

class MenuScreen extends StatelessWidget {

  void getLocation() async{
    Position location = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    print(location);
  }

  void getMenuDataAPI() async {
    http.Response response = await http.get('http://driverdroidapp.evansdelivery.com/api/TractorMessage/GetMessages?tractorNum=99999');
    if (response.statusCode == 200) {
      var data = response.body;
      print(data);
      print(jsonDecode(data)[0]['MessageId']);
    }
  }

  @override
  Widget build(BuildContext context) {

    getMenuDataAPI();

    return Scaffold(
        backgroundColor: bgColor,
        drawer: MenuDrawer(),
        appBar: AppBar(
          title: Text('What to eat?'),
//            leading: GestureDetector(
//              onTap: () {/* Write listener code here */},
//              child: Icon(
//                Icons.menu, // add custom icons also
//              ),
//            ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    print('Cart Pressed');
                  },
                  child: Icon(Icons.shopping_cart),
                )),
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 50,
              child: ListView.builder(
                itemCount: categoryList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return FoodCategoryCell( categoryLbl: categoryList[index],
                    selectedCategory: () {
                    getLocation();
                    },
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: 10,
                  //scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return MenuCell( menuItem: menuItemList[index], menuIcon: menuIconList[index],
                      selectedCell: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FoodDetailScreen();
                        }));
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
