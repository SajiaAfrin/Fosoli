
import 'package:flutter/material.dart';
import 'package:fosoli/screens/cattle/cattle.dart';
import 'package:fosoli/screens/favorite/favorite.dart';
import 'package:fosoli/screens/fieldcrop/fieldcrop.dart';
import 'package:fosoli/screens/fish/fish.dart';
import 'package:fosoli/screens/flower/flower.dart';
import 'package:fosoli/screens/fruit/fruit.dart';
import 'package:fosoli/screens/otherscrop/otherscrop.dart';
import 'package:fosoli/screens/spices/spices.dart';
import 'package:fosoli/screens/vegetable/vegetable.dart';

class HomeScreen extends StatelessWidget {
  static const String path = "HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF31A05F),
          title: Text("AgroTech"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, FavoriteScreen.path);
                },
                icon: Icon(Icons.favorite))
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.green[700],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/fieldcrop/paddy.jpg"),
                ListTile(
                  onTap: () {},
                  trailing: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(color: Colors.red),
                    child: Center(
                        child: Text(
                      "0",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  title: Text(
                    "Seed",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.white,
                  height: 0,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Fertilizer",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.white,
                  height: 0,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Questions",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.white,
                  height: 0,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Cultivation",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  color: Colors.white,
                  child: Text(
                    "More",
                    style: TextStyle(
                      color: Colors.green[700],
                      fontSize: 14,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Search",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(
                  thickness: 0.2,
                  color: Colors.white,
                  height: 0,
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.green,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.greenAccent, Colors.redAccent]),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.redAccent),
                tabs: [
                  Tab(
                    child: Text("Field Crop"),
                  ),
                  Tab(
                    child: Text("Fruit"),
                  ),
                  Tab(
                    child: Text("Flower"),
                  ),
                  Tab(
                    child: Text("Vegetable"),
                  ),
                  Tab(
                    child: Text("Spices"),
                  ),
                  Tab(
                    child: Text("Others Crop"),
                  ),
                   Tab(
                    child: Text("Fish"),
                  ),
                   Tab(
                    child: Text("Cattle"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                FieldCropScreen(),
                FruitScreen(),
                FlowerScreen(),
                VegetableScreen(),
                SpiceScreen(),
                OthersCropScreen(),
                FishScreen(),
                CattleScreen(),
              
              ]),
            )
          ],
        ),
      ),
    );
  }
}