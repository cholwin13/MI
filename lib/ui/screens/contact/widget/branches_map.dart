import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'branches_modal.dart';
import 'map_maker_list.dart';

class BranchesMap extends StatefulWidget {
  final BranchData arguments;
  const BranchesMap({super.key, required this.arguments});

  @override
  State<BranchesMap> createState() => _BranchesMapState();
}

class _BranchesMapState extends State<BranchesMap> {
  bool? isAndroid;
  bool? isiOS;

  final Completer<GoogleMapController> _controller = Completer();

  void initState() {
    // TODO: implement initState
    super.initState();
    checkPlatform();
  }

  void checkPlatform() {
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
      extendBodyBehindAppBar: true,
      body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: widget.arguments.marker.position,
            zoom: 8.0,
          ),
          mapType: MapType.normal,
          myLocationEnabled: true,
          compassEnabled: true,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: {widget.arguments.marker}),
    );
  }
}
