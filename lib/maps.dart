import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key, required this.title});

  final String title;

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final String Poppins = 'Poppins';
  LatLng initialLocation = const LatLng(37.422131, -122.084801);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: initialLocation,
            zoom: 14,
          ), //HEADER
        ),
    );
  }
}

//Image.network("https://telucoffee.weeblysite.com/uploads/b/5c5f93d5280c2ce5bcb679311b619d1ba094f6e2542c2b722ed9445ccc273594/IMG_4959_1617450677.jpg?width=200&optimize=medium"),//