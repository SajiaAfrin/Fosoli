import 'package:flutter/material.dart';
import 'package:fosoli/screens/fieldcrop/fieldcrop.dart';

class OptionScreen extends StatefulWidget {
  const OptionScreen({Key? key}) : super(key: key);

  @override
  _OptionScreenState createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(90.0),
          child: Column(
            children: [
              Row(
                children: [
                  ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FieldCropScreen()),
                  );
                },
                child: Text("Field Crop"),
              ),
               TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FieldCropScreen()),
                  );
                },
                child: Text("Field Crop"),
              ),
                ],
              ),
              
             
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FieldCropScreen()),
                  );
                },
                child: Text("Field Crop"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FieldCropScreen()),
                  );
                },
                child: Text("Field Crop"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FieldCropScreen()),
                  );
                },
                child: Text("Field Crop"),
              ),
            ],
          ),
        )
        );
  }
}
