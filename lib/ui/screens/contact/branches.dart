import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../helper/dimens.dart';
import 'branches_data.dart';
import 'branches_modal.dart';
import '../../widgets/widget_horizontal_expanded_view.dart';

class Branches extends StatefulWidget {
  const Branches({super.key});

  @override
  State<Branches> createState() => _BranchesState();
}

class _BranchesState extends State<Branches> {
  List<BranchData> branches = [];
  List<BranchData> filteredBranches = [];

  String searchTxt = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    checkBranch();
  }
  @override
  void didUpdateWidget(covariant Branches oldWidget) {
    super.didUpdateWidget(oldWidget);
  }


  void filterRegion(String text){
    final lowerCaseSearch = text.toLowerCase();
    if(text.isNotEmpty) {
      filteredBranches = branches.where((branch) {
        final lowerCaseRegion = branch.region.toLowerCase();
        final lowerCaseLocation = branch.location.toLowerCase();
        return lowerCaseRegion.contains(lowerCaseSearch) || lowerCaseLocation.contains(lowerCaseSearch);
      }).toList();
    }else{
      filteredBranches = branches;
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        checkBranch();
      });
    });
  }

  void checkBranch(){
    branches = context.isEnglish ? branchesEN : branchesMM;
    filterRegion("");
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: kMarginMedium_3),
          child: TextField(
            onChanged: (value) {
              setState(() {
                filterRegion(value);
              });
            },
            decoration: InputDecoration(
              hintText: 'Enter State, division, district or city',
              hintStyle: const TextStyle(fontSize: 14.0),
              prefixIcon: IconButton(
                icon: const Icon(Icons.search),
                color: context.appColors.colorPrimary,
                onPressed: () {},
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(boxRadius),
                borderSide: BorderSide(color: context.appColors.colorPrimary),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(boxRadius),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
            ),
          ),
        ),
        Expanded(
            child: ListView(
              children: [
                for(final branch in filteredBranches)
                  WidgetHorizontalExpandedCardView(region: branch.region, location: branch.location, contactNo: branch.contactNo)
              ],
            ))
      ],
    );
  }
}