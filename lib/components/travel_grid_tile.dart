import 'package:flutter/material.dart';

class TravelGridTile extends StatelessWidget {
  const TravelGridTile({
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
    return Container(
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
            aspectRatio: 3 / 2,
            child: Image(
              image: AssetImage('assets/images/Kawah Putih Ciwidey.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          // Title
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Text(
              "Kawah Putih Ciwidey",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),

          // location
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text("Bandung",
                style: TextStyle(
                  fontSize: 12,
                )),
          ),
        ],
      ),
    );
  }
}
