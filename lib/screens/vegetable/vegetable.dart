
import 'package:flutter/material.dart';
import 'package:fosoli/data.dart';
import 'package:fosoli/global/functions.dart';
import 'package:fosoli/screens/details/details.dart';
import 'package:fosoli/widget/custom_grid_tile.dart';

class VegetableScreen extends StatelessWidget {
  final List vegetable = agrotech["vegetable"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDelegate(),
      padding: EdgeInsets.all(10),
      itemCount: vegetable.length,
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
          onTap: (){
            Navigator.pushNamed(context, DetailScreen.path, arguments:{"category": "Vegetable", "data": vegetable[index]} );
          },
          imageUrl: vegetable[index]["image"],
          title: vegetable[index]["title"],
        );
      }
    );
  }
}