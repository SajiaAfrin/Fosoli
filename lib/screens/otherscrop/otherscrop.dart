
import 'package:flutter/material.dart';
import 'package:fosoli/data.dart';
import 'package:fosoli/global/functions.dart';
import 'package:fosoli/screens/details/details.dart';
import 'package:fosoli/widget/custom_grid_tile.dart';

class OthersCropScreen extends StatelessWidget {
  final List otherscrop = agrotech["otherscrop"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDelegate(),
      padding: EdgeInsets.all(10),
      itemCount: otherscrop.length,
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
          onTap: (){
            Navigator.pushNamed(context, DetailScreen.path, arguments:{"category": "Non-Veg", "data": otherscrop[index]} );
          },
          imageUrl: otherscrop[index]["image"],
          title:otherscrop[index]["title"],
        );
      }
    );
  }
}