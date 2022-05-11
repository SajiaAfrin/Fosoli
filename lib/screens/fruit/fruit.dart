
import 'package:flutter/material.dart';
import 'package:fosoli/data.dart';
import 'package:fosoli/global/functions.dart';
import 'package:fosoli/screens/details/details.dart';
import 'package:fosoli/widget/custom_grid_tile.dart';

class FruitScreen extends StatelessWidget {

  final List fruit = agrotech["fruit"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDelegate(),
      padding: EdgeInsets.all(10),
      itemCount: fruit.length,
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
          onTap: (){
            Navigator.pushNamed(context, DetailScreen.path, arguments:{"category": "Fruit", "data":fruit[index]} );
          },
          imageUrl:fruit[index]["image"],
          title: fruit[index]["title"],
        );
      }
    );
  }
}

