import 'package:flutter/material.dart';

class MapCard extends StatelessWidget {
  const MapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          // Placeholder map image
          Image.asset(
            'assets/images/farmland.png',
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          const Positioned(
            left: 16,
            bottom: 16,
            child: Text(
              '47.626600, -122.344000',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
