import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsController extends GetxController {
  final String title = "Google Map";
  CameraPosition initialLocation = CameraPosition(target: LatLng(0.0, 0.0));
  GoogleMapController mapController;
  Position _currentPosition;
  final startAddressController = TextEditingController();

  String startAddress = '';
  String destinationAddress = '';
  String placeDistance;
  Set<Marker> markers = {};
  PolylinePoints polylinePoints;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  getCurrentLocation() async {
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      // Store the position in the variable
      _currentPosition = position;

      print('CURRENT POS: $_currentPosition');

      // For moving the camera to current location
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(position.latitude, position.longitude),
            zoom: 18.0,
          ),
        ),
      );
      update();
      // await _getAddress();
    }).catchError((e) {
      print(e);
    });
  }

  getAddress() async {
    try {
      // Places are retrieved using the coordinates
      List<Placemark> p = await placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);

      // Taking the most probable result
      Placemark place = p[0];

      // Structuring the address
      var currentAddress =
          "${place.name}, ${place.locality}, ${place.postalCode}, ${place.country}";

      // Update the text of the TextField
      startAddressController.text = currentAddress;

      // Setting the user's present location as the starting address
      startAddress = currentAddress;
      update();
    } catch (e) {
      print(e);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getCurrentLocation();
  }
}
