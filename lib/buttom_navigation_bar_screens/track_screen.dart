import 'package:flutter/material.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'My Location',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF9B1A19)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
          children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/images/map_img.png",
            fit: BoxFit.fill,
          ),
        ),
        AlertDialog(
          title: const Text(
            "Your Location",
            style: TextStyle(color: Colors.grey),
          ),
          content: const Row(
            children: [
              Icon(Icons.location_on),
              SizedBox(
                width: 10,
              ),
              Text("Amman , jordan")
            ],
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.all(20),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF9B1A19),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                child: const Text(
                  "Set Location",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ))
          ],
        )
      ]),
    );
  }
}
