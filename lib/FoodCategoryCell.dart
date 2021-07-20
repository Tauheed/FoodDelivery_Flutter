import 'package:flutter/material.dart';

class FoodCategoryCell extends StatelessWidget {
  FoodCategoryCell({this.categoryLbl, this.selectedCategory});
  final String categoryLbl;
  Function selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: selectedCategory,
        child: Card(
          margin: EdgeInsets.only(bottom: 0),
          color: Colors.orange[100],
          child: Container(
            child: Row(
              children: <Widget>[
                Image.asset(
                  'images/food.jpg',
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(categoryLbl, style: TextStyle(color: Colors.grey)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
