import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return homeState();
  }
}

class homeState extends State<home> {
  var markers = HashSet<Marker>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('google maps app'),
      ),
      body: GoogleMap(
        markers: markers,
        onMapCreated: (controller) {
          setState(() {
            markers.add(Marker(
                markerId: MarkerId("id"),
                position: LatLng(30.013056, 31.208853),
                infoWindow: InfoWindow(title: "cairo",snippet: "welcome to cairo")

            ));
          });
        },
        initialCameraPosition:
            CameraPosition(target: LatLng(30.013056, 31.208853), zoom: 10),
      ),
    );
  }
}
