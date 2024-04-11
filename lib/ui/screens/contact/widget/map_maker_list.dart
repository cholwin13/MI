import 'package:easy_localization/easy_localization.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final List<Marker> mapMakerList = [
  Marker(
      markerId: const MarkerId('Kachin'),
      position: const LatLng(25.3935048, 97.3903391),
      infoWindow: InfoWindow(
        title: 'kachin_state'.tr(),
        snippet: 'kachin_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('kayah'),
      position: const LatLng(19.6838106, 97.2019502),
      infoWindow: InfoWindow(
        title: 'kayah_state'.tr(),
        snippet: 'kayah_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('kayin'),
      position: const LatLng(16.8732829, 97.6578113),
      infoWindow: InfoWindow(
        title: 'kayin_state'.tr(),
        snippet: 'kayin_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('chin'),
      position: const LatLng(22.6459771, 93.5933113),
      infoWindow: InfoWindow(
        title: 'chin_state'.tr(),
        snippet: 'chin_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('mon'),
      position: const LatLng(16.4565329, 97.6318113),
      infoWindow: InfoWindow(
        title: 'mon_state'.tr(),
        snippet: 'mon_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('rakhine'),
      position: const LatLng(20.1414217 , 92.8760057),
      infoWindow: InfoWindow(
        title: 'rakhine_state'.tr(),
        snippet: 'rakhine_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('shan'),
      position: const LatLng( 20.7617272, 97.0478946),
      infoWindow: InfoWindow(
        title: 'shan_state'.tr(),
        snippet: 'shan_location'.tr(),
      )
  ),
  Marker(
      markerId: const MarkerId('sagaing'),
      position: const LatLng( 21.8941994, 95.9764224),
      infoWindow: InfoWindow(
        title: 'sagaing_division'.tr(),
        snippet: 'sagaing_location'.tr(),
      )
  ),
  Marker(
      markerId: const MarkerId('tanintharyi'),
      position: const LatLng( 14.0774496, 98.1990335),
      infoWindow: InfoWindow(
        title: 'tanintharyi_division'.tr(),
        snippet: 'tanintharyi_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('bago'),
      position: const LatLng( 17.3394495, 96.4877557),
      infoWindow: InfoWindow(
        title: 'bago_division'.tr(),
        snippet: 'bago_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('magwe'),
      position: const LatLng( 20.1456994,94.9280613 ),
      infoWindow: InfoWindow(
        title: 'magwe_division'.tr(),
        snippet: 'magwe_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('mandalay'),
      position: const LatLng( 21.9686717,96.1083391 ),
      infoWindow: InfoWindow(
        title: 'mandalay_division'.tr(),
        snippet: 'mandalay_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('ayeyarwaddy'),
      position: const LatLng( 16.7999495,94.760728 ),
      infoWindow: InfoWindow(
        title: 'ayeyarwaddy_division'.tr(),
        snippet: 'ayeyarwaddy_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('naypyitaw'),
      position: const LatLng( 19.7647828, 96.2016724),
      infoWindow: InfoWindow(
        title: 'naypyitaw_divisiion'.tr(),
        snippet: 'naypyitaw_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('kyaington'),
      position: const LatLng( 20.4801717,99.9361169 ),
      infoWindow: InfoWindow(
        title: 'kyaington_district'.tr(),
        snippet: 'kyaington_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('kyaukse'),
      position: const LatLng( 21.6121439, 96.1297835),
      infoWindow: InfoWindow(
        title: 'kyaukse_district'.tr(),
        snippet: 'kyaukse_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('kale'),
      position: const LatLng( 23.1881438, 94.0687557),
      infoWindow: InfoWindow(
        title: 'kale_district'.tr(),
        snippet: 'kale_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('saging_district'),
      position: const LatLng( 22.1240883,95.1218113 ),
      infoWindow: InfoWindow(
        title: 'saging_district'.tr(),
        snippet: 'saging_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('tarchileik'),
      position: const LatLng( 20.4798939, 20.4798939),
      infoWindow: InfoWindow(
        title: 'tarchileik_district'.tr(),
        snippet: 'tarchileik_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('taungoo'),
      position: const LatLng( 18.9565329,96.435728 ),
      infoWindow: InfoWindow(
        title: 'taungoo_district'.tr(),
        snippet: 'taungoo_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('pyay'),
      position: const LatLng( 18.8160051, 95.2477002),
      infoWindow: InfoWindow(
        title: 'pyay_district'.tr(),
        snippet: 'pyay_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('pakokku'),
      position: const LatLng( 21.3451161, 95.0975335),
      infoWindow: InfoWindow(
        title: 'pakokku_district'.tr(),
        snippet: 'pakokku_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('pyapon'),
      position: const LatLng( 16.2768107, 95.6828391),
      infoWindow: InfoWindow(
        title: 'pyapon_district'.tr(),
        snippet: 'pyapon_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('myeik'),
      position: const LatLng( 12.4433108, 98.6011446),
      infoWindow: InfoWindow(
        title: 'myeik_district'.tr(),
        snippet: 'myeik_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('maubin'),
      position: const LatLng( 16.7262551, 95.6495335),
      infoWindow: InfoWindow(
        title: 'maubin_district'.tr(),
        snippet: 'maubin_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('muse'),
      position: const LatLng( 24.0028938,97.9150057 ),
      infoWindow: InfoWindow(
        title: 'muse_district'.tr(),
        snippet: 'muse_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('meikhtila'),
      position: const LatLng( 20.8677272, 95.8456446),
      infoWindow: InfoWindow(
        title: 'meikhtila_district'.tr(),
        snippet: 'meikhtila_location'.tr(),
      )
  ),
  Marker(
      markerId: const MarkerId('myawady'),
      position: const LatLng( 16.6811718,98.5048391 ),
      infoWindow: InfoWindow(
        title: 'myawady_district'.tr(),
        snippet: 'myawady_location'.tr(),
      )
  ),
  Marker(
      markerId: const MarkerId('myingyan'),
      position: const LatLng( 21.4696717, 95.3861169),
      infoWindow: InfoWindow(
        title: 'myingyan_district'.tr(),
        snippet: 'myingyan_location'.tr(),
      )
  ),
  Marker(
      markerId: const MarkerId('myaungmya'),
      position: const LatLng( 16.6054495, 94.9224224),
      infoWindow: InfoWindow(
        title: 'myaungmya_district'.tr(),
        snippet: 'myaungmya_location'.tr(),
      )
  ),
  Marker(
      markerId: const MarkerId('yamethin'),
      position: const LatLng( 20.4291161, 96.1390613),
      infoWindow: InfoWindow(
        title: 'yamethin_district'.tr(),
        snippet: 'yamethin_location'.tr(),
      )
  ),
  Marker(
      markerId: const MarkerId('yangon_south'),
      position: const LatLng( 16.7685329,96.2448669 ),
      infoWindow: InfoWindow(
        title: 'yangon_south_district'.tr(),
        snippet: 'yangon_south_location'.tr(),
      )
  ),
  Marker(
      markerId: const MarkerId('shwebo'),
      position: const LatLng( 22.5642827, 95.706478 ),
      infoWindow: InfoWindow(
        title: 'shwebo_district'.tr(),
        snippet: 'shwebo_location'.tr(),
      )
  ),
  Marker(
      markerId: const MarkerId('lashio'),
      position: const LatLng( 22.9474771, 97.7400891),
      infoWindow: InfoWindow(
        title: 'lashio_district'.tr(),
        snippet: 'lashio_location'.tr(),
      )
  ),
  Marker(
      markerId: const MarkerId('thaton'),
      position: const LatLng( 16.9103662, 97.3908946),
      infoWindow: InfoWindow(
        title: 'thaton_district'.tr(),
        snippet: 'thaton_location'.tr(),
      )
  ),
  Marker(
      markerId: const MarkerId('thayet'),
      position: const LatLng( 19.3259217,95.1835057 ),
      infoWindow: InfoWindow(
        title: 'thayet_district'.tr(),
        snippet: 'thayat_location'.tr(),
      )
  ),

  Marker(
      markerId: const MarkerId('tharyarwady'),
      position: const LatLng( 17.6420051, 95.7841169),
      infoWindow: InfoWindow(
        title: 'tharyarwady_district'.tr(),
        snippet: 'tharyarwady_location'.tr(),
      )
  ),
  Marker(
      markerId: const MarkerId('thandwe'),
      position: const LatLng( 18.4711995, 94.364228),
      infoWindow: InfoWindow(
        title: 'thandwe_district'.tr(),
        snippet: 'thandwe_location'.tr(),
      )
  ),
  Marker(
      markerId: const MarkerId('hinthada'),
      position: const LatLng( 17.6507829, 95.4525057),
      infoWindow: InfoWindow(
        title: 'hinthada_district'.tr(),
        snippet: 'hinthada_location'.tr(),
      )
  ),
];