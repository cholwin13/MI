import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:test_pj_mi/ui/screens/contact/widget/map_maker_list.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  bool? isAndroid;
  bool? isiOS;

  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGoogle = CameraPosition(
    target: LatLng(16.7685329, 96.2448669),
    zoom: 8.0,
  );

  final List<Marker> _marker = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(mapMakerList);
    checkPlatform();
  }

  void checkPlatform() {
    // print("Default platform ==> ${defaultTargetPlatform}");
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      setState(() {
        isiOS = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: isiOS == true
            ? AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
              )
            : null,

        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0.0,
        // ),
        extendBodyBehindAppBar: true,
        body: GoogleMap(
          initialCameraPosition: _kGoogle,
          mapType: MapType.normal,
          myLocationEnabled: true,
          compassEnabled: true,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: Set<Marker>.from(_marker),
        ));
  }
}
