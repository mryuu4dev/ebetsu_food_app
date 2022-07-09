import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShopsMapScreen extends StatelessWidget {
  ShopsMapScreen({Key? key}) : super(key: key);

  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962), 
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
    target: LatLng(37.43296265331129, -122.08832357078792),
    bearing: 192.8334901395799,
    tilt: 59.440717697143555,
    zoom: 14.4746,
  );

  static final Set<Marker> _markers = {
    const Marker(
      markerId: MarkerId('marker1'),
      position: LatLng(37.4224411,-122.0884808),
      infoWindow: InfoWindow(title: "フューチャー株式会社"),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        markers: _markers,
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake, 
        label: const Text('To the lake!'), 
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
