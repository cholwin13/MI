import 'package:easy_localization/easy_localization.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'branches_modal.dart';

final List<BranchData> branchesEN = [
  BranchData(
    region: 'Kachin State',
    location:
        'U Paing No.(26/1), Ayeyar Quarter, Ayemarnwe La Payar Kyaung Lane And Construction Between Myikyine',
    contactNo: '074-2522736',
    marker: Marker(
        markerId: const MarkerId('Kachin'),
        position: const LatLng(25.3935048, 97.3903391),
        infoWindow: InfoWindow(
          title: 'kachin_state'.tr(),
          snippet: 'kachin_location'.tr(),
        )),
  ),
  BranchData(
      region: 'Kayah State',
      location: 'Akwet No.(18), Daweukhu Quarter, Daweukhu (6) Lane ,Loikaw',
      contactNo: '083-2221362',
  marker: Marker(
        markerId: const MarkerId('kayah'),
        position: const LatLng(19.6838106, 97.2019502),
        infoWindow: InfoWindow(
          title: 'kayah_state'.tr(),
          snippet: 'kayah_location'.tr(),
        )
    ),
  ),
  BranchData(
      region: 'Kayin State',
      location: 'No.(5) Quarter, Bogyoke Lane, HPA-AN',
      contactNo: '058-21204',
    marker: Marker(
        markerId: const MarkerId('kayin'),
        position: const LatLng(16.8732829, 97.6578113),
        infoWindow: InfoWindow(
          title: 'kayin_state'.tr(),
          snippet: 'kayin_location'.tr(),
        )
    ),
  ),
  BranchData(
      region: 'Chin State',
      location: 'U Paing No (100), Bogyoke Lane And Methatgon Quarter, Harkha',
      contactNo: '070-21127',
    marker: Marker(
        markerId: const MarkerId('chin'),
        position: const LatLng(22.6459771, 93.5933113),
        infoWindow: InfoWindow(
          title: 'chin_state'.tr(),
          snippet: 'chin_location'.tr(),
        )
    ),
  ),
  BranchData(
      region: 'Mon State',
      location:
          'Mg Ngan Quarter, Taung Waing Lane And Taung Paw Lane Corner Mawlamyine',
      contactNo: '057-2027055',
      marker:  Marker(
          markerId: const MarkerId('mon'),
          position: const LatLng(16.4565329, 97.6318113),
          infoWindow: InfoWindow(
            title: 'mon_state'.tr(),
            snippet: 'mon_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Rakhine State',
      location: 'May:Yu Lane, Ma Kyine Myaing Quarter Sittwe',
      contactNo: '043-23584',
      marker: Marker(
          markerId: const MarkerId('rakhine'),
          position: const LatLng(20.1414217 , 92.8760057),
          infoWindow: InfoWindow(
            title: 'rakhine_state'.tr(),
            snippet: 'rakhine_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Shan State',
      location: 'Bogyoke Aung San Lane, Thit Taw Quarter Taunggyi',
      contactNo: '081-2121664',
      marker: Marker(
          markerId: const MarkerId('shan'),
          position: const LatLng( 20.7617272, 97.0478946),
          infoWindow: InfoWindow(
            title: 'shan_state'.tr(),
            snippet: 'shan_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Sagaing Division',
      location: '11/2 Kan Tha Yar Park Lane (West), Yone Gyi Quarter, Monywar',
      contactNo: '071-21239',
      marker: Marker(
          markerId: const MarkerId('sagaing'),
          position: const LatLng( 21.8941994, 95.9764224),
          infoWindow: InfoWindow(
            title: 'sagaing_division'.tr(),
            snippet: 'sagaing_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Tanintharyi Division',
      location:
          'No.(38), Sayon Lane, Mhaw Ein (West) Quarter Nyaung Yan Taung Yet , Dawei',
      contactNo: '059-21201',
      marker:  Marker(
          markerId: const MarkerId('tanintharyi'),
          position: const LatLng( 14.0774496, 98.1990335),
          infoWindow: InfoWindow(
            title: 'tanintharyi_division'.tr(),
            snippet: 'tanintharyi_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Bago Division',
      location: 'No.(211), 33 Lane , Shinsawpu Quarter Bago',
      contactNo: '052-2221251',
      marker: Marker(
          markerId: const MarkerId('bago'),
          position: const LatLng( 17.3394495, 96.4877557),
          infoWindow: InfoWindow(
            title: 'bago_division'.tr(),
            snippet: 'bago_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Magwe Division',
      location: 'Ah Kwet No(1), (14) Lane , Kanthayar Quarter Magwe',
      contactNo: '063-2023638',
      marker: Marker(
          markerId: const MarkerId('magwe'),
          position: const LatLng( 20.1456994,94.9280613 ),
          infoWindow: InfoWindow(
            title: 'magwe_division'.tr(),
            snippet: 'magwe_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Mandalay Division',
      location:
          'No.(414), 63 Lane,34x35 Between, Pyigyimyatshin Quarter, Chan Aye Tha Zan Township, Mandalay',
      contactNo: '02-4039119/2832004',
      marker: Marker(
          markerId: const MarkerId('mandalay'),
          position: const LatLng( 21.9686717,96.1083391 ),
          infoWindow: InfoWindow(
            title: 'mandalay_division'.tr(),
            snippet: 'mandalay_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Ayeyarwady Division',
      location:
          'Shwe Wuthmone Park Lane, Shwe Wuthmone Quarter,(13) Quarter, Pathein',
      contactNo: '042-29027',
      marker: Marker(
          markerId: const MarkerId('ayeyarwaddy'),
          position: const LatLng( 16.7999495,94.760728 ),
          infoWindow: InfoWindow(
            title: 'ayeyarwaddy_division'.tr(),
            snippet: 'ayeyarwaddy_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Naypyitaw Division',
      location:
          'No(964/965),22 Lane And Myintzu Lane Corner Aung Tha Yar Quarter, Pokepathiyi Township Naypyitaw',
      contactNo: '067-22539/25858',
      marker: Marker(
          markerId: const MarkerId('naypyitaw'),
          position: const LatLng( 19.7647828, 96.2016724),
          infoWindow: InfoWindow(
            title: 'naypyitaw_divisiion'.tr(),
            snippet: 'naypyitaw_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Kyaington District',
      location: 'Myo Thit, (3) Quarter, Myotaw Khan Ma (West) Kyaington',
      contactNo: '084-22475',
      marker: Marker(
          markerId: const MarkerId('kyaington'),
          position: const LatLng( 20.4801717,99.9361169 ),
          infoWindow: InfoWindow(
            title: 'kyaington_district'.tr(),
            snippet: 'kyaington_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Kyaukse District',
      location: 'Kyatminton Quarter, Su Pound Yongyi (West) Kyaukse',
      contactNo: '066-2050253',
      marker: Marker(
          markerId: const MarkerId('kyaukse'),
          position: const LatLng( 21.6121439, 96.1297835),
          infoWindow: InfoWindow(
            title: 'kyaukse_district'.tr(),
            snippet: 'kyaukse_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Kale District',
      location: 'Bog Yoke Lane, Nyaung Pin Tha Quarter, Kale',
      contactNo: '073-22852',
      marker: Marker(
          markerId: const MarkerId('kale'),
          position: const LatLng( 23.1881438, 94.0687557),
          infoWindow: InfoWindow(
            title: 'kale_district'.tr(),
            snippet: 'kale_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Sagaing District',
      location: '80 (D), Thiyi Mingala Lane, Payami Quarter, Sagaing',
      contactNo: '072-21170/072-22050',
      marker: Marker(
          markerId: const MarkerId('saging_district'),
          position: const LatLng( 22.1240883,95.1218113 ),
          infoWindow: InfoWindow(
            title: 'saging_district'.tr(),
            snippet: 'saging_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Tarchileik District',
      location: 'Haung Laik Quarter, Satmhu Lane, Tarchileik',
      contactNo: '084-51857',
      marker: Marker(
          markerId: const MarkerId('tarchileik'),
          position: const LatLng( 20.4798939, 20.4798939),
          infoWindow: InfoWindow(
            title: 'tarchileik_district'.tr(),
            snippet: 'tarchileik_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Taungoo District',
      location: '(9) Quarter, Oak Kyutan, Taungoo',
      contactNo: '054-23768',
      marker: Marker(
          markerId: const MarkerId('taungoo'),
          position: const LatLng( 18.9565329,96.435728 ),
          infoWindow: InfoWindow(
            title: 'taungoo_district'.tr(),
            snippet: 'taungoo_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Pyay District',
      location: 'Khi Taryar Myothit (8) Lane , BA Yint Naung Lane Magyi, Pyay',
      contactNo: '053-2028034',
      marker: Marker(
          markerId: const MarkerId('pyay'),
          position: const LatLng( 18.8160051, 95.2477002),
          infoWindow: InfoWindow(
            title: 'pyay_district'.tr(),
            snippet: 'pyay_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Pakokku District',
      location:
          'AH Kwet (10), U Paing(1) Buddha Gon Quarter, Layin Kwin Haung Lane Pakokku',
      contactNo: '062-21519',
      marker: Marker(
          markerId: const MarkerId('pakokku'),
          position: const LatLng( 21.3451161, 95.0975335),
          infoWindow: InfoWindow(
            title: 'pakokku_district'.tr(),
            snippet: 'pakokku_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Pyapon District',
      location: 'C.1 Palake Tan, (12) Quarter. ABCD Between Pya Pon',
      contactNo: '045-40422',
      marker: Marker(
          markerId: const MarkerId('pyapon'),
          position: const LatLng( 16.2768107, 95.6828391),
          infoWindow: InfoWindow(
            title: 'pyapon_district'.tr(),
            snippet: 'pyapon_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Myeik District',
      location:
          '20.AN U Myat Lay Pan Chan (East), Kan Pyar Lane Magyi, Si Pin Yone Wine, Myeik',
      contactNo: '059-41392',
      marker: Marker(
          markerId: const MarkerId('myeik'),
          position: const LatLng( 12.4433108, 98.6011446),
          infoWindow: InfoWindow(
            title: 'myeik_district'.tr(),
            snippet: 'myeik_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Maubin District',
      location: '157, Min Lane, 9 Quarter, Maubin',
      contactNo: '045-30340',
      marker: Marker(
          markerId: const MarkerId('maubin'),
          position: const LatLng( 16.7262551, 95.6495335),
          infoWindow: InfoWindow(
            title: 'maubin_district'.tr(),
            snippet: 'maubin_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Muse District',
      location: 'Pyi Htaung Su Lanema Ho Mon Quarter Muse',
      contactNo: '082-52620',
      marker: Marker(
          markerId: const MarkerId('muse'),
          position: const LatLng( 24.0028938,97.9150057 ),
          infoWindow: InfoWindow(
            title: 'muse_district'.tr(),
            snippet: 'muse_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Meikhtila District',
      location: 'Pauk Chaung Quarter, Yeik Tha Yat, Kan Part Lane, Meiktila',
      contactNo: '064-23572',
      marker: Marker(
          markerId: const MarkerId('meikhtila'),
          position: const LatLng( 20.8677272, 95.8456446),
          infoWindow: InfoWindow(
            title: 'meikhtila_district'.tr(),
            snippet: 'meikhtila_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Myawady District',
      location: 'U Paing No(464), Aye Chan Tharya Lane (4) Quarter, Myawaddy',
      contactNo: '058-50250',
      marker: Marker(
          markerId: const MarkerId('myawady'),
          position: const LatLng( 16.6811718,98.5048391 ),
          infoWindow: InfoWindow(
            title: 'myawady_district'.tr(),
            snippet: 'myawady_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Myingyan District',
      location: 'No(2) Quarter ,(2) Lane , Myingyan',
      contactNo: '066-2021564',
      marker: Marker(
          markerId: const MarkerId('myingyan'),
          position: const LatLng( 21.4696717, 95.3861169),
          infoWindow: InfoWindow(
            title: 'myingyan_district'.tr(),
            snippet: 'myingyan_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Myaungmya District',
      location: 'No(132),(2) Lane , (2) Quarter, Myaungmya',
      contactNo: '042-70394',
      marker: Marker(
          markerId: const MarkerId('myaungmya'),
          position: const LatLng( 16.6054495, 94.9224224),
          infoWindow: InfoWindow(
            title: 'myaungmya_district'.tr(),
            snippet: 'myaungmya_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Yamethin District',
      location:
          'No,TA/ 117 (A) U Paing No 53(A) Kwin No (29), Thi La Wa Lane Ma Gyi , War Toe Zay Gon Quarter Yamethin',
      contactNo: '064-40159/064-40196',
      marker: Marker(
          markerId: const MarkerId('yamethin'),
          position: const LatLng( 20.4291161, 96.1390613),
          infoWindow: InfoWindow(
            title: 'yamethin_district'.tr(),
            snippet: 'yamethin_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Yangon Southern District',
      location:
          'Aung Mingalar Quarter, Aung Thiyi Lane, Yangon Southern District, Thanlyin',
      contactNo: '056-21546',
      marker: Marker(
          markerId: const MarkerId('yangon_south'),
          position: const LatLng( 16.7685329,96.2448669 ),
          infoWindow: InfoWindow(
            title: 'yangon_south_district'.tr(),
            snippet: 'yangon_south_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Shwebo District',
      location: 'U Paing (72/B), Akwet (2984), No (5) Quarter Shwebo',
      contactNo: '075-21318',
      marker: Marker(
          markerId: const MarkerId('shwebo'),
          position: const LatLng( 22.5642827, 95.706478 ),
          infoWindow: InfoWindow(
            title: 'shwebo_district'.tr(),
            snippet: 'shwebo_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Lashio District',
      location: 'Quarter (1) Butar Lane And Kankaw Lane Corner Lashio',
      contactNo: '082-2203675 / 082-2203964',
      marker: Marker(
          markerId: const MarkerId('lashio'),
          position: const LatLng( 22.9474771, 97.7400891),
          infoWindow: InfoWindow(
            title: 'lashio_district'.tr(),
            snippet: 'lashio_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Thaton District',
      location: 'Thaton-Pha-An Road , Bin Hlaing Quarter Thaton',
      contactNo: '057-40281',
      marker: Marker(
          markerId: const MarkerId('thaton'),
          position: const LatLng( 16.9103662, 97.3908946),
          infoWindow: InfoWindow(
            title: 'thaton_district'.tr(),
            snippet: 'thaton_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Thayet District',
      location: 'Lan Ma Taw Lane, Yone Quarter Thayest',
      contactNo: '068-21046',
      marker: Marker(
          markerId: const MarkerId('thayet'),
          position: const LatLng( 19.3259217,95.1835057 ),
          infoWindow: InfoWindow(
            title: 'thayet_district'.tr(),
            snippet: 'thayat_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Tharyarwady District',
      location:
          'Sayar San Myo Thit (East), Bo Bwar Yeik Tha Lane Ywar Gyi Gon (East) , Tharyarwady',
      contactNo: '055-2230281',
      marker: Marker(
          markerId: const MarkerId('tharyarwady'),
          position: const LatLng( 17.6420051, 95.7841169),
          infoWindow: InfoWindow(
            title: 'tharyarwady_district'.tr(),
            snippet: 'tharyarwady_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Thandwe District',
      location: 'Oakar Pyan Pan Chan Lane,(2) Quarter, Thandwe',
      contactNo: '043-65219',
      marker: Marker(
          markerId: const MarkerId('thandwe'),
          position: const LatLng( 18.4711995, 94.364228),
          infoWindow: InfoWindow(
            title: 'thandwe_district'.tr(),
            snippet: 'thandwe_location'.tr(),
          )
      ),),
  BranchData(
      region: 'Hinthada District',
      location: 'No(2) Bo Aung Kyaw Lane, Patamyar Quarter, Hinthada',
      contactNo: '044-2021546',
      marker: Marker(
          markerId: const MarkerId('hinthada'),
          position: const LatLng( 17.6507829, 95.4525057),
          infoWindow: InfoWindow(
            title: 'hinthada_district'.tr(),
            snippet: 'hinthada_location'.tr(),
          )
      ),),
];

final List<BranchData> branchesMM = [
  BranchData(
      region: 'ကချင်ပြည်နယ်',
      location:
          'ဦးပိုင်အမှတ်(၂၆/၁)၊ဧရာရပ်ကွက်၊ဧမာနွေလဘုရားကျောင်းလမ်းနှင့် ဆောက်လုပ်ရေးလမ်းဆုံ၊ မြစ်ကြီးနားမြို့',
      contactNo: '၀၇၄-၂၅၂၂၇၃၆',
    marker: Marker(
        markerId: const MarkerId('Kachin'),
        position: const LatLng(25.3935048, 97.3903391),
        infoWindow: InfoWindow(
          title: 'kachin_state'.tr(),
          snippet: 'kachin_location'.tr(),
        )),
  ),
  BranchData(
      region: 'ကယားပြည်နယ်',
      location:
          'အကွက်အမှတ် (၁၈)၊ ဒေါစုစူရပ်ကွက်၊ ဒေါစုစူ(၆)လမ်း၊ လွိုင်ကော်မြို့',
      contactNo: '၀၈၃-၂၂၂၁၃၆၂',
    marker: Marker(
        markerId: const MarkerId('kayah'),
        position: const LatLng(19.6838106, 97.2019502),
        infoWindow: InfoWindow(
          title: 'kayah_state'.tr(),
          snippet: 'kayah_location'.tr(),
        )
    ),
  ),
  BranchData(
      region: 'ကရင်ပြည်နယ်',
      location: 'အမှတ်(၅)ရပ်ကွက်၊ ဗိုလ်ချုပ်လမ်း၊ ဘားအံမြို့',
      contactNo: '၀၅၈-၂၁၂၀၄',
    marker: Marker(
        markerId: const MarkerId('kayin'),
        position: const LatLng(16.8732829, 97.6578113),
        infoWindow: InfoWindow(
          title: 'kayin_state'.tr(),
          snippet: 'kayin_location'.tr(),
        )
    ),
  ),
  BranchData(
      region: 'ချင်းပြည်နယ်',
      location:
          'ဦးပိုင်အမှတ်(၁၀၀)၊ ဗိုလ်ချုပ်လမ်းနှင့်မီးသတ်ကုန်းတက်လမ်း၊ ဟားခါးမြို့၊ ကွင်းအမှတ်(၄)၊ မြေကွက်အမှတ်(၄)၊ မြို့သစ်ရပ်ကွက်၊ ဗိုလ်ချုပ်လမ်း။',
      contactNo: '၀၇၀-၂၁၁၂၇',
    marker: Marker(
        markerId: const MarkerId('chin'),
        position: const LatLng(22.6459771, 93.5933113),
        infoWindow: InfoWindow(
          title: 'chin_state'.tr(),
          snippet: 'chin_location'.tr(),
        )
    ),
  ),
  BranchData(
      region: 'မွန်ပြည်နယ်',
      location:
          'မောင်ငံရပ်၊ တောင်ဝိုင်းလမ်းနှင့် တောင်ပေါ်လမ်းထောင့်၊ မော်လမြိုင်မြို့',
      contactNo: '၀၅၇-၂၀၂၇၀၅၅',
      marker:  Marker(
          markerId: const MarkerId('mon'),
          position: const LatLng(16.4565329, 97.6318113),
          infoWindow: InfoWindow(
            title: 'mon_state'.tr(),
            snippet: 'mon_location'.tr(),
          )
      ),),
  BranchData(
      region: 'ရခိုင်ပြည်နယ်',
      location: 'မေယုလမ်း၊ မကျည်းမြိုင်ရပ်ကွက်၊ မီးစက်ကြီးအနီး၊ စစ်တွေမြို့',
      contactNo: '၀၄၃-၂၃၅၈၄',
      marker: Marker(
          markerId: const MarkerId('rakhine'),
          position: const LatLng(20.1414217 , 92.8760057),
          infoWindow: InfoWindow(
            title: 'rakhine_state'.tr(),
            snippet: 'rakhine_location'.tr(),
          )
      ),),
  BranchData(
      region: 'ရှမ်းပြည်နယ်',
      location: 'ဗိုလ်ချုပ်အောင်ဆန်းလမ်း၊ သစ်တောရပ်၊ တောင်ကြီးမြို့',
      contactNo: '၀၈၁-၂၁၂၁၆၆၄',
      marker: Marker(
          markerId: const MarkerId('shan'),
          position: const LatLng( 20.7617272, 97.0478946),
          infoWindow: InfoWindow(
            title: 'shan_state'.tr(),
            snippet: 'shan_location'.tr(),
          )
      ),),
  BranchData(
      region: 'စစ်ကိုင်းတိုင်းဒေသကြီး',
      location: '၁၁/၂၊ အနောက်ဘက်ကမ်သာယာပတ်လမ်း၊ ရုံးကြီးရပ်ကွက်၊ မုံရွာမြို့',
      contactNo: '၀၇၁-၂၁၂၃၉',
      marker: Marker(
          markerId: const MarkerId('sagaing'),
          position: const LatLng( 21.8941994, 95.9764224),
          infoWindow: InfoWindow(
            title: 'sagaing_division'.tr(),
            snippet: 'sagaing_location'.tr(),
          )
      ),),
  BranchData(
      region: 'တနင်္သာရီတိုင်းဒေသကြီး',
      location:
          'အမှတ်(၃၈)၊ဆေးရုံလမ်း၊မျော်အင်းအနောက်ကွက်၊ညောင်ရမ်းတောင် ရပ်ကွက်၊ ထား၀ယ်မြို့',
      contactNo: '၀၅၉-၂၁၂၀၁',
      marker:  Marker(
          markerId: const MarkerId('tanintharyi'),
          position: const LatLng( 14.0774496, 98.1990335),
          infoWindow: InfoWindow(
            title: 'tanintharyi_division'.tr(),
            snippet: 'tanintharyi_location'.tr(),
          )
      ),),
  BranchData(
      region: 'ပဲခူးတိုင်းဒေသကြီး',
      location: 'အမှတ် (၂၁၁)၊ ၃၃ လမ်း၊ ရှင်စောပုရပ်၊ ပဲခူးမြို့',
      contactNo: '၀၅၂-၂၂၂၁၂၅၁',
      marker: Marker(
          markerId: const MarkerId('bago'),
          position: const LatLng( 17.3394495, 96.4877557),
          infoWindow: InfoWindow(
            title: 'bago_division'.tr(),
            snippet: 'bago_location'.tr(),
          )
      ),),
  BranchData(
      region: 'မကွေးတိုင်းဒေသကြီး',
      location: 'အကွက်အမှတ်(၁)၊ (၁၄)လမ်း၊ ကန်သာယာရပ်၊မကွေးမြို့',
      contactNo: '၀၆၃-၂၀၂၃၆၃၈',
      marker: Marker(
          markerId: const MarkerId('magwe'),
          position: const LatLng( 20.1456994,94.9280613 ),
          infoWindow: InfoWindow(
            title: 'magwe_division'.tr(),
            snippet: 'magwe_location'.tr(),
          )
      ),),
  BranchData(
      region: 'မန္တလေးတိုင်းဒေသကြီး',
      location:
          'အမှတ်(၄၁၄)၊ ၆၃လမ်း၊ ၃၄_၃၅ ကြား၊ ပြည်ကြီးမြတ်ရှင်ရပ်၊ ချမ်းအေးသာဇံ မြို့နယ်၊ မန္တလေးမြို့',
      contactNo: '၀၂-၂၈၃၂၀၀၄/ ၀၂-၄၀၃၉၁၁၉',
      marker: Marker(
          markerId: const MarkerId('mandalay'),
          position: const LatLng( 21.9686717,96.1083391 ),
          infoWindow: InfoWindow(
            title: 'mandalay_division'.tr(),
            snippet: 'mandalay_location'.tr(),
          )
      ),),
  BranchData(
      region: 'ဧရာဝတီတိုင်းဒေသကြီး',
      location: 'ရွှေ၀တ်မှုံပတ်လမ်း၊ ရွှေ၀တ်မှုံရပ်၊ (၁၃)ရပ်ကွက်၊ပုသိမ်မြို့',
      contactNo: '၀၄၂-၂၉၀၂၇',
      marker: Marker(
          markerId: const MarkerId('ayeyarwaddy'),
          position: const LatLng( 16.7999495,94.760728 ),
          infoWindow: InfoWindow(
            title: 'ayeyarwaddy_division'.tr(),
            snippet: 'ayeyarwaddy_location'.tr(),
          )
      ),),
  BranchData(
      region: 'နေပြည်တော်တိုင်းရုံး',
      location:
          'အမှတ်(၉၆၄/၉၆၅)၊၂၂လမ်းနှင့်မဉ္ဇူလမ်းထောင့်၊အောင်သာယာရပ်၊ပုဗ္ပသီရိ မြို့နယ်၊ နေပြည်တော်',
      contactNo: '၀၆၇-၂၂၅၃၉/၂၅၈၅၈',
      marker: Marker(
          markerId: const MarkerId('naypyitaw'),
          position: const LatLng( 19.7647828, 96.2016724),
          infoWindow: InfoWindow(
            title: 'naypyitaw_divisiion'.tr(),
            snippet: 'naypyitaw_location'.tr(),
          )
      ),),
  BranchData(
      region: 'ကျိုင်းတုံခရိုင်',
      location:
          'မြို့သစ်ရပ်၊ (၃)ရပ်ကွက်၊ မြို့တော်ခန်းမအနောက်ဘက်၊ ကျိုင်းတုံမြို့',
      contactNo: '၀၈၄-၂၂၄၇၅',
      marker: Marker(
          markerId: const MarkerId('kyaington'),
          position: const LatLng( 20.4801717,99.9361169 ),
          infoWindow: InfoWindow(
            title: 'kyaington_district'.tr(),
            snippet: 'kyaington_location'.tr(),
          )
      ),),
  BranchData(
      region: 'ကျောက်ဆည်ခရိုင်',
      location:
          'ကြက်မင်းတွန်ရပ်ကွက်၊ စုပေါင်းရုံးကြီးအနောက်ဘက်၊ ကျောက်ဆည်မြို့',
      contactNo: '၀၆၆-၂၀၅၀၂၅၃',
      marker: Marker(
          markerId: const MarkerId('kyaukse'),
          position: const LatLng( 21.6121439, 96.1297835),
          infoWindow: InfoWindow(
            title: 'kyaukse_district'.tr(),
            snippet: 'kyaukse_location'.tr(),
          )
      ),),
  BranchData(
      region: 'ကလေးခရိုင်',
      location:
          'ဗိုလ်ချုပ်လမ်း၊ညောင်သာယာရက်ကွက်၊မြို့နယ်စီမံခန့်ခွဲမှု့ကော်မတီရုံး၊ ကလေးမြို့',
      contactNo: '၀၇၃-၂၂၈၅၂',
      marker: Marker(
          markerId: const MarkerId('kale'),
          position: const LatLng( 23.1881438, 94.0687557),
          infoWindow: InfoWindow(
            title: 'kale_district'.tr(),
            snippet: 'kale_location'.tr(),
          )
      ),),
  BranchData(
      region: 'စစ်ကိုင်းခရိုင်',
      location: '၈၀(ဃ)သီရိမင်္ဂလာလမ်း၊ ပါရမီရပ်၊ စစ်ကိုင်းမြို့',
      contactNo: '၀၇၂-၂၁၁၇၀/ ၀၇၂-၂၂၀၅၀',
      marker: Marker(
          markerId: const MarkerId('saging_district'),
          position: const LatLng( 22.1240883,95.1218113 ),
          infoWindow: InfoWindow(
            title: 'saging_district'.tr(),
            snippet: 'saging_location'.tr(),
          )
      ),),
  BranchData(
      region: 'တာချီလိတ်ခရိုင်',
      location: 'ဟောင်လိတ်ရပ်ကွက်၊ စက်မှုလမ်း၊ တာချီလိတ်မြို့',
      contactNo: '၀၈၄-၅၁၈၅၇',
      marker: Marker(
          markerId: const MarkerId('tarchileik'),
          position: const LatLng( 20.4798939, 20.4798939),
          infoWindow: InfoWindow(
            title: 'tarchileik_district'.tr(),
            snippet: 'tarchileik_location'.tr(),
          )
      ),),
  BranchData(
      region: 'တောင်ငူခရိုင်',
      location:
          'ခရိုင်စီမံကိန်းရုံးတောင်ဘက်၊ရန်ကုန်-မန္တလေးလမ်း၊၉ရပ်ကွက်၊ အုတ်ကြွတ်တန်းရပ်၊တောင်ငူမြို့',
      contactNo: '၀၅၄-၂၃၇၆၈',
      marker: Marker(
          markerId: const MarkerId('taungoo'),
          position: const LatLng( 18.9565329,96.435728 ),
          infoWindow: InfoWindow(
            title: 'taungoo_district'.tr(),
            snippet: 'taungoo_location'.tr(),
          )
      ),),
  BranchData(
      region: 'ပြည်ခရိုင်',
      location: 'ခေတ္တရာမြို့သစ်(၈)လမ်းထိပ်၊ ဘုရင့်နောင်လမ်းမကြီး၊ ပြည်မြို့',
      contactNo: '၀၅၃-၂၀၂၈၀၃၄',
      marker: Marker(
          markerId: const MarkerId('pyay'),
          position: const LatLng( 18.8160051, 95.2477002),
          infoWindow: InfoWindow(
            title: 'pyay_district'.tr(),
            snippet: 'pyay_location'.tr(),
          )
      ),),
  BranchData(
      region: 'ပခုက္ကူခရိုင်',
      location:
          'အမှတ်(၁)၊ဗုဒ္ဓကုန်းရပ်ကွက်၊လေယာဉ်ကွင်းဟောင်းလမ်း၊အကွက်အမှတ်(၁)၊ဦးပိုင်အမှတ်(၁၀၁/၁)၊ ပခုက္ကူမြို့',
      contactNo: '၀၆၂-၂၁၅၁၉',
      marker: Marker(
          markerId: const MarkerId('pakokku'),
          position: const LatLng( 21.3451161, 95.0975335),
          infoWindow: InfoWindow(
            title: 'pakokku_district'.tr(),
            snippet: 'pakokku_location'.tr(),
          )
      ),),
  BranchData(
      region: 'ဖျာပုံခရိုင်',
      location:
          'c-1၊ ပုလိပ်တန်း၊(၁၂)ရပ်ကွက်၊အေ၊ဘီ၊စီ၊ဒီ ဝင်းအတွင်း၊ ဖျာပုံမြို့',
      contactNo: '၀၄၅-၄၀၄၂၂',
      marker: Marker(
          markerId: const MarkerId('pyapon'),
          position: const LatLng( 16.2768107, 95.6828391),
          infoWindow: InfoWindow(
            title: 'pyapon_district'.tr(),
            snippet: 'pyapon_location'.tr(),
          )
      ),),
  BranchData(
      region: 'မြိတ်ခရိုင်',
      location:
          '၂၀ AN ဦးမြတ်လေးပန်းခြံရှေ့၊ ကန်ဖျားလမ်းမကြီး၊ စည်ပင်ရုံးဝင်း၊ မြိတ်မြို့',
      contactNo: '၀၅၉-၄၁၃၉၂',
      marker: Marker(
          markerId: const MarkerId('myeik'),
          position: const LatLng( 12.4433108, 98.6011446),
          infoWindow: InfoWindow(
            title: 'myeik_district'.tr(),
            snippet: 'myeik_location'.tr(),
          )
      ),),
  BranchData(
      region: 'မအူပင်ခရိုင်',
      location: '၁၅၇၊ မင်းလမ်း၊ ၉ ရပ်ကွက်၊ မအူပင်မြို့',
      contactNo: '၀၄၅-၃၀၃၄၀',
      marker: Marker(
          markerId: const MarkerId('maubin'),
          position: const LatLng( 16.7262551, 95.6495335),
          infoWindow: InfoWindow(
            title: 'maubin_district'.tr(),
            snippet: 'maubin_location'.tr(),
          )
      ),),
  BranchData(
      region: 'မူဆယ်ခရိုင်',
      location:
          'ရွှေသမင်ဂေါက်ကွင်းရှေ့၊ပို့ဆက်နှင့်ကုန်သည်ကြီးများအသင်းရုံးကြား ပြည်ထောင်စုလမ်းမ၊ ဟိုမွန်ရပ်ကွက်၊ မူဆယ်မြို့',
      contactNo: '၀၈၂-၅၂၆၂၀',
      marker: Marker(
          markerId: const MarkerId('muse'),
          position: const LatLng( 24.0028938,97.9150057 ),
          infoWindow: InfoWindow(
            title: 'muse_district'.tr(),
            snippet: 'muse_location'.tr(),
          )
      ),),
  BranchData(
      region: 'မိထ္ထီလာခရိုင်',
      location: 'ပေါက်ခေါင်းရပ်ကွက်၊ ရိပ်သာရပ်၊ ကန်ပတ်လမ်း၊ မိတ္တီလာမြို့',
      contactNo: '၀၆၄-၂၃၅၇၂',
      marker: Marker(
          markerId: const MarkerId('meikhtila'),
          position: const LatLng( 20.8677272, 95.8456446),
          infoWindow: InfoWindow(
            title: 'meikhtila_district'.tr(),
            snippet: 'meikhtila_location'.tr(),
          )
      ),),
  BranchData(
      region: 'မြဝတီခရိုင်',
      location: 'ဦးပိုင်အမှတ်-၄၆၄၊ အေးချမ်းသာယာလမ်း၊ (၄)ရပ်ကွက်၊ မြဝတီမြို့',
      contactNo: '၀၅၈-၅၀၂၅၀',
      marker: Marker(
          markerId: const MarkerId('myawady'),
          position: const LatLng( 16.6811718,98.5048391 ),
          infoWindow: InfoWindow(
            title: 'myawady_district'.tr(),
            snippet: 'myawady_location'.tr(),
          )
      ),),
  BranchData(
      region: 'မြင်းခြံခရိုင်',
      location: 'အမှတ်(၂)ရပ်ကွက်၊ (၂)လမ်း၊ ပါတီယူနစ်ရုံးဟောင်း၊ မြင်းခြံမြို့',
      contactNo: '၀၆၆-၂၀၂၁၅၆၄',
      marker: Marker(
          markerId: const MarkerId('myingyan'),
          position: const LatLng( 21.4696717, 95.3861169),
          infoWindow: InfoWindow(
            title: 'myingyan_district'.tr(),
            snippet: 'myingyan_location'.tr(),
          )
      ),),
  BranchData(
      region: 'မြောင်းမြခရိုင်',
      location: 'အမှတ်(၁၃၂)(၂)လမ်း၊ (၂)ရပ်ကွက်၊ မြောင်းမြမြို့',
      contactNo: '၀၄၂-၇၀၃၉၄',
      marker: Marker(
          markerId: const MarkerId('myaungmya'),
          position: const LatLng( 16.6054495, 94.9224224),
          infoWindow: InfoWindow(
            title: 'myaungmya_district'.tr(),
            snippet: 'myaungmya_location'.tr(),
          )
      ),),
  BranchData(
      region: 'ရမည်းသင်းခရိုင်',
      location:
          'အမှတ်တ/၁၁၇(က)၊ဦးပိုင်အမှတ်(၅၃)က၊ကွင်းအမှတ်(၂၉)သီလ၀လမ်းမကြီးဝါးတိုးစျေးကုန်းရပ်ကွက်၊ ရမည်းသင်းမြို့',
      contactNo: '၀၆၄-၄၀၁၅၉/၀၆၄-၄၀၁၉၆',
      marker: Marker(
          markerId: const MarkerId('yamethin'),
          position: const LatLng( 20.4291161, 96.1390613),
          infoWindow: InfoWindow(
            title: 'yamethin_district'.tr(),
            snippet: 'yamethin_location'.tr(),
          )
      ),),
  BranchData(
      region: 'ရန်ကုန်တောင်ပိုင်းခရိုင်',
      location:
          'အောင်မင်္ဂလာရပ်ကွက်၊အောင်သီရိလမ်း၊ရန်ကုန်တောင်ပိုင်းခရိုင်၊သန်လျင်မြို့',
      contactNo: '၀၅၆-၂၁၅၄၆',
      marker: Marker(
          markerId: const MarkerId('yangon_south'),
          position: const LatLng( 16.7685329,96.2448669 ),
          infoWindow: InfoWindow(
            title: 'yangon_south_district'.tr(),
            snippet: 'yangon_south_location'.tr(),
          )
      ),),
  BranchData(
      region: 'ရွှေဘိုခရိုင်',
      location: 'ဦးပိုင်အမှတ်(၇၂/ခ)အကွက်(၂၉၈၄)၊ အမှတ်(၅)ရပ်ကွက်၊ ရွှေဘိုမြို့',
      contactNo: '၀၇၅-၂၁၃၁၈',
      marker: Marker(
          markerId: const MarkerId('shwebo'),
          position: const LatLng( 22.5642827, 95.706478 ),
          infoWindow: InfoWindow(
            title: 'shwebo_district'.tr(),
            snippet: 'shwebo_location'.tr(),
          )
      ),),
  BranchData(
      region: 'လားရှိုးခရိုင်',
      location: 'ရပ်ကွက်(၁)၊ ဘူတာလမ်းနှင့်ကံ့ကော်လမ်းထောင့်၊ လားရှိုးမြို့',
      contactNo: '၀၈၂-၂၂၀၃၆၇၅/၀၈၂-၂၂၀၃၉၆၄',
      marker: Marker(
          markerId: const MarkerId('lashio'),
          position: const LatLng( 22.9474771, 97.7400891),
          infoWindow: InfoWindow(
            title: 'lashio_district'.tr(),
            snippet: 'lashio_location'.tr(),
          )
      ),),
  BranchData(
      region: 'သထုံခရိုင်',
      location: 'သထုံ-ဘားအံ ကားလမ်း၊ ဘင်လှိုင်ရပ်ကွက်၊သထုံမြို့',
      contactNo: '၀၅၇-၄၀၂၈၁',
      marker: Marker(
          markerId: const MarkerId('thaton'),
          position: const LatLng( 16.9103662, 97.3908946),
          infoWindow: InfoWindow(
            title: 'thaton_district'.tr(),
            snippet: 'thaton_location'.tr(),
          )
      ),),
  BranchData(
      region: 'သရက်ခရိုင်',
      location: 'လမ်းမတော်လမ်း၊ ရုံးရပ်ကွက်၊ သရက်မြို့',
      contactNo: '၀၆၈-၂၁၀၄၆',
      marker: Marker(
          markerId: const MarkerId('thayet'),
          position: const LatLng( 19.3259217,95.1835057 ),
          infoWindow: InfoWindow(
            title: 'thayet_district'.tr(),
            snippet: 'thayat_location'.tr(),
          )
      ),),
  BranchData(
      region: 'သာယာဝတီခရိုင်',
      location:
          'ဆရာစံမြို့သစ်အရှေ့ဘက်၊ဘိုးဘွားရိပ်သာလမ်း၊ရွာကြီးကုန်းအရှေ့ရပ်၊ သာယာ၀တီမြို့',
      contactNo: '၀၅၅-၂၂၃၀၂၈၁',
      marker: Marker(
          markerId: const MarkerId('tharyarwady'),
          position: const LatLng( 17.6420051, 95.7841169),
          infoWindow: InfoWindow(
            title: 'tharyarwady_district'.tr(),
            snippet: 'tharyarwady_location'.tr(),
          )
      ),),
  BranchData(
      region: 'သံတွဲခရိုင်',
      location: 'ဥက္ကာပျံပန်းခြံလမ်း၊ (၂)ရပ်ကွက်၊ သံတွဲမြို့',
      contactNo: '၀၄၃-၆၅၂၁၉',
      marker: Marker(
          markerId: const MarkerId('thandwe'),
          position: const LatLng( 18.4711995, 94.364228),
          infoWindow: InfoWindow(
            title: 'thandwe_district'.tr(),
            snippet: 'thandwe_location'.tr(),
          )
      ),),
  BranchData(
      region: 'ဟင်္သာတခရိုင်',
      location: 'အမှတ်(၂)၊ ဗိုလ်အောင်ကျော်လမ်း၊ ပတ္တမြားရပ်ကွက်၊ ဟင်္သာတမြို့',
      contactNo: '၀၄၄-၂၀၂၁၅၄၆',
      marker: Marker(
          markerId: const MarkerId('hinthada'),
          position: const LatLng( 17.6507829, 95.4525057),
          infoWindow: InfoWindow(
            title: 'hinthada_district'.tr(),
            snippet: 'hinthada_location'.tr(),
          )
      ),),
];
