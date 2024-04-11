import 'package:google_maps_flutter/google_maps_flutter.dart';

class BranchData {
  final String region;
  final String location;
  final String contactNo;
  final Marker marker;

  BranchData({
    required this.region,
    required this.location,
    required this.contactNo,
    required this.marker
  });
}