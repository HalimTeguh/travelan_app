import 'package:flutter/material.dart';
import 'package:travelan_app/components/travel_grid_tile.dart';
import 'package:travelan_app/components/travel_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List travelData = [
    ['Kawah Putih Ciwidey', 'Bandung', 'assets/images/Kawah Putih Ciwidey.jpg'],
    ['Kawah Putih Ciwidey', 'Bandung', 'assets/images/Kawah Putih Ciwidey.jpg'],
    ['Kawah Putih Ciwidey', 'Bandung', 'assets/images/Kawah Putih Ciwidey.jpg'],
    ['Kawah Putih Ciwidey', 'Bandung', 'assets/images/Kawah Putih Ciwidey.jpg'],
    ['Kawah Putih Ciwidey', 'Bandung', 'assets/images/Kawah Putih Ciwidey.jpg'],
    ['Kawah Putih Ciwidey', 'Bandung', 'assets/images/Kawah Putih Ciwidey.jpg'],
    ['Kawah Putih Ciwidey', 'Bandung', 'assets/images/Kawah Putih Ciwidey.jpg'],
    ['Kawah Putih Ciwidey', 'Bandung', 'assets/images/Kawah Putih Ciwidey.jpg'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          "Travelan - Bandung",
        ),
      ),
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (BuildContext context, constraint) {
        if (constraint.maxWidth < 750) {
          return ListView.builder(
            itemCount: travelData.length,
            itemBuilder: (context, index) {
              return TravelTile(
                title: travelData[index][0],
                location: travelData[index][1],
                imagePath: travelData[index][2],
              );
            },
          );
        } else if (constraint.maxWidth < 1200) {
          return Padding(
            padding: const EdgeInsets.all(25),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, mainAxisSpacing: 30, crossAxisSpacing: 20),
              itemCount: travelData.length,
              itemBuilder: (context, index) {
                return TravelGridTile(
                  title: travelData[index][0],
                  location: travelData[index][1],
                  imagePath: travelData[index][2],
                );
              },
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(25),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6, mainAxisSpacing: 30, crossAxisSpacing: 20),
              itemCount: travelData.length,
              itemBuilder: (context, index) {
                return TravelGridTile(
                  title: travelData[index][0],
                  location: travelData[index][1],
                  imagePath: travelData[index][2],
                );
              },
            ),
          );
        }
      }),
    );
  }
}
