import 'package:demo/src/pages/GoogleMap/google_map_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMaps extends StatelessWidget {
  GoogleMaps({Key key}) : super(key: key);

  // controller
  final googleMapController = Get.put(GoogleMapsController());

  Widget textField({
    @required TextEditingController controller,
    @required FocusNode focusNode,
    @required String label,
    @required String hint,
    @required double width,
    @required Icon prefixIcon,
    Widget suffixIcon,
    @required Function(String) locationCallback,
  }) {
    return Container(
      width: width * 0.8,
      child: TextField(
        onChanged: (value) {
          locationCallback(value);
        },
        controller: controller,
        focusNode: focusNode,
        decoration: new InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: label,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Colors.grey.shade400,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Colors.blue.shade300,
              width: 2,
            ),
          ),
          contentPadding: EdgeInsets.all(15),
          hintText: hint,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: googleMapController.scaffoldKey,
      appBar: AppBar(
        title: Text(googleMapController.title),
      ),
      body: Container(
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: googleMapController.initialLocation,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              mapType: MapType.normal,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: true,
              onMapCreated: (GoogleMapController controller) {
                googleMapController.mapController = controller;
              },
            ),
          ],
        ),
      ),
    );
  }
}
