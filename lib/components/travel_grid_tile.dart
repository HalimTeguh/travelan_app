import 'package:flutter/material.dart';
import 'package:travelan_app/pages/detail_page.dart';

class TravelGridTile extends StatelessWidget {
  const TravelGridTile({
    super.key,
    required this.title,
    required this.location,
    required this.imagePath,
    required this.description,
  });

  final String title;
  final String location;
  final String imagePath;
  final String description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return DetailPage(
            title: title,
            location: location,
            description: description,
            imagePath: imagePath,
          );
        }));
      },
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(2, 2),
                blurRadius: 5,
                spreadRadius: 5),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Thumnails
            AspectRatio(
              aspectRatio: 1,
              child: Image(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            // Title
            Flexible(
              // Menggunakan Flexible untuk membuat teks berukuran proporsional
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  maxLines: 2, // Menentukan jumlah maksimal baris
                  overflow: TextOverflow
                      .fade, // Menambahkan ellipsis jika terjadi overflow
                ),
              ),
            ),

            // location
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(location,
                  style: TextStyle(
                    fontSize: 12,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
