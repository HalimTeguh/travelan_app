import 'package:flutter/material.dart';

class TravelTile extends StatelessWidget {
  const TravelTile({
    super.key,
    required this.title,
    required this.location,
    required this.imagePath,
  });

  final String title;
  final String location;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  spreadRadius: 5),
            ]),
        child: ListTile(
          title: Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5, right: 15),
                height: 120,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                                imagePath),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    maxLines: 2,
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  // Lokasi
                  Text(
                    location,
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
