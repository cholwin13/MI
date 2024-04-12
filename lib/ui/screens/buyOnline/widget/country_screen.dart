import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../widgets/app_bar_widget.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
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
    'Country J',
    'Country K',
    'Country L',
    'Country M',
    'Country N',
    'Country O',
    'Country P',
    'Country Q',
    'Country R',
    'Country S'
  ];

  String? selectedType;
  late List<String> filterCountryList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filterCountryList = countryList;
  }

  void filterCountries(String value){
    setState(() {
      filterCountryList = countryList.where((country) =>
        country.toLowerCase().contains(value.toLowerCase())
      ).toList();
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
                      selectedType = filterCountryList[index];
                      CustomNavigationHelper.router.pop(selectedType);
                    },
                    child: SizedBox(
                      height: 20,
                      child: Text(filterCountryList[index], style: context.appFonts.bodySmall()?.copyWith(
                        fontSize: textRegular
                      ),),
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
