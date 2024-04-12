import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../widgets/app_bar_widget.dart';

class CountryCodeScreen extends StatefulWidget {
  const CountryCodeScreen({super.key});

  @override
  State<CountryCodeScreen> createState() => _CountryCodeScreenState();
}

class _CountryCodeScreenState extends State<CountryCodeScreen> {
  final List<String> countryList = <String>[
    'Country A',
    'Country B',
    'Country C',
    'Country D',
    'Country E',
    'Country F',
    'Country G',
    'Country H',
    'Country I',
  ];

  final List<Map<String, dynamic>> countryCodeList = [
    {
      "id": 1,
      "countryName": "Afghanistan",
      "shortPhoneNo": "93"
    },
    {
      "id": 2,
      "countryName": "Albania",
      "shortPhoneNo": "355"
    },
    {
      "id": 3,
      "countryName": "Algeria",
      "shortPhoneNo": "213"
    },
    {
      "id": 4,
      "countryName": "American Samoa",
      "shortPhoneNo": "1-684"
    },
    {
      "id": 5,
      "countryName": "Andorra",
      "shortPhoneNo": "376"
    },
    {
      "id": 6,
      "countryName": "Angola",
      "shortPhoneNo": "244"
    },
    {
      "id": 7,
      "countryName": "Anguilla",
      "shortPhoneNo": "1-264"
    },
    {
      "id": 8,
      "countryName": "Antarctica",
      "shortPhoneNo": "672"
    },
    {
      "id": 9,
      "countryName": "Antigua and Barbuda",
      "shortPhoneNo": "1-268"
    },
    {
      "id": 10,
      "countryName": "Argentina",
      "shortPhoneNo": "54"
    },
    {
      "id": 1,
      "countryName": "Afghanistan",
      "shortPhoneNo": "93"
    },
    {
      "id": 2,
      "countryName": "Albania",
      "shortPhoneNo": "355"
    },
    {
      "id": 3,
      "countryName": "Algeria",
      "shortPhoneNo": "213"
    },
    {
      "id": 4,
      "countryName": "American Samoa",
      "shortPhoneNo": "1-684"
    },
    {
      "id": 5,
      "countryName": "Andorra",
      "shortPhoneNo": "376"
    },
    {
      "id": 6,
      "countryName": "Angola",
      "shortPhoneNo": "244"
    },
    {
      "id": 7,
      "countryName": "Anguilla",
      "shortPhoneNo": "1-264"
    },
    {
      "id": 8,
      "countryName": "Antarctica",
      "shortPhoneNo": "672"
    },
    {
      "id": 9,
      "countryName": "Antigua and Barbuda",
      "shortPhoneNo": "1-268"
    },
    {
      "id": 10,
      "countryName": "Argentina",
      "shortPhoneNo": "54"
    },
  ];

  String? selectedType;
  late List<Map<String, dynamic>> filterCountryList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filterCountryList = countryCodeList;
  }

  void filterCountries(String value) {
    setState(() {
      filterCountryList = countryCodeList.where((country) =>
          country["countryName"]
              .toString()
              .toLowerCase()
              .contains(value.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalInboundIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kMarginMedium_2),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: kMarginMedium_2),
              child: TextField(
                onChanged: filterCountries,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: const TextStyle(fontSize: 14.0),
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    color: context.appColors.colorPrimary,
                    onPressed: () {},
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(boxRadius),
                    borderSide:
                    BorderSide(color: context.appColors.colorPrimary),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(boxRadius),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                ),
              ),
            ),
            const SizedBox(
              height: kMarginMedium_2,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: filterCountryList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: (){
                      selectedType = '(+${filterCountryList[index]['shortPhoneNo']})';
                      CustomNavigationHelper.router.pop(selectedType);
                    },
                    child: SizedBox(
                      height: 20,
                      child: Row(
                        children: [
                          Text('(+${filterCountryList[index]['shortPhoneNo']})', style: context.appFonts.bodySmall()?.copyWith(
                              fontSize: textRegular
                          ),),
                          const SizedBox(width: kMarginCardMedium,),
                          Text(filterCountryList[index]['countryName'], style: context.appFonts.bodySmall()?.copyWith(
                            fontSize: textRegular
                        ),),

                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) => Divider(
                  color: context.appColors.colorLabel,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
