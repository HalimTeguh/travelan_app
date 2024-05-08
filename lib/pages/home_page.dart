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
    ['Braga', 'Kota Bandung', 'assets/images/Braga.jpg'],
    [
      'Kampung Cai Ranca Upas',
      'Bandung, Ciwidey',
      'assets/images/Kampung Cai Ranca Upas.jpg'
    ],
    ['Lembang Park & Zoo', 'Lembang', 'assets/images/Lembang Park & Zoo.jpg'],
    ['Kawah Putih Ciwidey', 'Bandung', 'assets/images/Kawah Putih Ciwidey.jpg'],
    [
      'Orchid Forest Cikole',
      'Cikole',
      'assets/images/Orchid Forest Cikole.jpg'
    ],
    [
      'Taman Hutan Raya Ir. H. Djuanda',
      'Dago Pakar',
      'assets/images/Taman Hutan Raya Ir. H. Djuanda.jpg'
    ],
    ['Tebing Keraton', 'Dago Pakar', 'assets/images/Tebing Keraton.jpg'],
    ['Rumah Guguk', 'Bandung', 'assets/images/Rumah Guguk.jpg'],
    [
      'The Great Asia Africa Lembang',
      'Lembang',
      'assets/images/The Great Asia Africa Lembang.jpg'
    ],
    [
      'Branchsto Ganesha Lembang',
      'Lembang',
      'assets/images/Branchsto Ganesha Lembang.jpg'
    ],
    ['Dusun Bambu Lembang', 'Lembang', 'assets/images/Dusun Bambu Lembang.jpg'],
    ['Dago Dream Park', 'Dago Pakar', 'assets/images/Dago Dream Park.jpg'],
    ['Jendela Alam', 'Bandung', 'assets/images/Jendela Alam.jpg'],
    ['The Lodge Maribaya', 'Lembang', 'assets/images/The Lodge Maribaya.jpg'],
    ['Fairy Garden', 'Lembang', 'assets/images/Fairy Garden.jpg'],
    [
      'Floating Market Lembang',
      'Lembang',
      'assets/images/Floating Market Lembang.jpg'
    ],
    ['Farmhouse Lembang', 'Lembang', 'assets/images/Farmhouse Lembang.jpg'],
    [
      'Gunung Putri Lembang',
      'Lembang',
      'assets/images/Gunung Putri Lembang.jpg'
    ],
    ['Bukit Moko', 'Bandung ', 'assets/images/Bukit Moko.jpg'],
    [
      'Glamping Lakeside Rancabali',
      'Ciwidey',
      'assets/images/Glamping Lakeside Rancabali.jpg'
    ],
    ['Rumah Belanda', 'Lembang', 'assets/images/Rumah Belanda.jpg'],
    ['Grafika Cikole', 'Lembang', 'assets/images/Grafika Cikole.jpg'],
    [
      'Taman Wisata Bougenville',
      'Bandung',
      'assets/images/Taman Wisata Bougenville.jpg'
    ],
    ['Kebun Teh Sukawana', 'Cisarua', 'assets/images/Kebun Teh Sukawana.jpg'],
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
                crossAxisCount: 4,
                mainAxisSpacing: 30,
                crossAxisSpacing: 20,
                childAspectRatio: 3/4
              ),
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
                crossAxisCount: 6,
                mainAxisSpacing: 30,
                crossAxisSpacing: 20,
                childAspectRatio: 3/4
              ),
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
