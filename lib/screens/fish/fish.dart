
import 'package:flutter/material.dart';
import 'package:fosoli/data.dart';
import 'package:fosoli/global/functions.dart';
import 'package:fosoli/screens/details/details.dart';
import 'package:fosoli/widget/custom_grid_tile.dart';

class FishScreen extends StatelessWidget {
 final List fish = agrotech["fish"];

   FishScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDelegate(),
      padding: EdgeInsets.all(10),
      itemCount: fish.length,
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
         onTap: (){
            Navigator.pushNamed(context, DetailScreen.path, arguments:{"category": "Field Crop", "data": fish[index]} );
          },
          imageUrl: fish[index]["image"],
          title:fish[index]["title"],
        );
      }
    );
  }
}