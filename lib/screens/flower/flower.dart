
import 'package:flutter/material.dart';
import 'package:fosoli/data.dart';
import 'package:fosoli/global/functions.dart';
import 'package:fosoli/screens/details/details.dart';
import 'package:fosoli/widget/custom_grid_tile.dart';

class FlowerScreen extends StatelessWidget {
 final List flower = agrotech["flower"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDelegate(),
      padding: EdgeInsets.all(10),
      itemCount: flower.length,
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
          onTap: (){
            Navigator.pushNamed(context, DetailScreen.path, arguments:{"category": "Fast-Food", "data": flower[index]} );
          },
          imageUrl: flower[index]["image"],
          title: flower[index]["title"],
        );
      }
    );
  }
}