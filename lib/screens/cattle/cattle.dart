
import 'package:flutter/material.dart';
import 'package:fosoli/data.dart';
import 'package:fosoli/global/functions.dart';
import 'package:fosoli/screens/details/details.dart';
import 'package:fosoli/widget/custom_grid_tile.dart';

class CattleScreen extends StatelessWidget {
 final List cattle = agrotech["cattle"];

   CattleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDelegate(),
      padding: EdgeInsets.all(10),
      itemCount: cattle.length,
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
         onTap: (){
            Navigator.pushNamed(context, DetailScreen.path, arguments:{"category": "Field Crop", "data": cattle[index]} );
          },
          imageUrl: cattle[index]["image"],
          title:cattle[index]["title"],
        );
      }
    );
  }
}