import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';

class TPLPremiumHistoryScreen extends StatefulWidget {
  const TPLPremiumHistoryScreen({super.key});

  @override
  State<TPLPremiumHistoryScreen> createState() => _TPLPremiumHistoryScreenState();
}

class _TPLPremiumHistoryScreenState extends State<TPLPremiumHistoryScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FlutterDownloader.registerCallback(downloadCallback);
  }

  static void downloadCallback(
      String id,
      int status,
      int progress,
      ) {
    print(
      'Callback on background isolate: '
          'task ($id) is in status ($status) and process ($progress)',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.generalTlpIcon,
            color: context.appColors.colorGold,
            width: iconMedium_3,
            height: iconMedium_3,
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: kMarginMedium_3,
            ),
            const ProductInfoDetailTitleWidget(titleTxt: 'tpl_premium_history'),
            const SizedBox(
              height: kMarginLarge,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kMarginMedium),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: context.appColors.colorPrimary),
                  borderRadius:
                      const BorderRadius.all(Radius.circular(boxRadius)),
                ),
                child: Table(
                  border: TableBorder(
                    horizontalInside:
                        BorderSide(color: context.appColors.colorPrimary),
                  ),
                  children: [
                    _buildTableRowTitle(
                        context, ['Period From', 'Period To', 'Remark']),
                    _buildTableRow(
                        context, ['2024-3-23', '2024-3-23', _buildDownloadButton(context)])
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  TableRow _buildTableRowTitle(BuildContext context, List<dynamic> rowData) {
    return TableRow(
      children: rowData.map((cellData) {
        return TableCell(
          child: Padding(
            padding: const EdgeInsets.all(kMarginSmall_3),
            child: Text(cellData, style: context.appFonts.bodySmall(),),
          ),
        );
      }).toList(),
    );
  }

  TableRow _buildTableRow(BuildContext context, List<dynamic> rowData) {
    return TableRow(
      children: rowData.map((cellData) {
        if (cellData is String) {
          return TableCell(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kMarginMedium_2, horizontal: kMarginSmall_3),
              child: Text(cellData, style: context.appFonts.bodySmall()?.copyWith(
                fontWeight: FontWeight.bold
              ),),
            ),
          );
        } else {
          return TableCell(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kMarginMedium, horizontal: 2.0),
              child: cellData,
            ),
          );
        }
      }).toList(),
    );
  }

  Widget _buildDownloadButton(BuildContext context) {
    return SizedBox(
      height: kMarginLarge,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: context.appColors.colorPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(boxRadius),
          ),
        ),
        onPressed: () async {
          // final status = await Permission.storage.request();
          //
          // if(status.isGranted){
          //   _requestDownload();
          // }else{
          //   print("Permission dennied");
          // }

          bool _permissionReady = await _checkPermission();

          if(_permissionReady){
            _requestDownload();
          }else{
            print('Permission denied');
          }

        },
        child: Text('download', style: context.appFonts.bodySmall()?.copyWith(
          color: context.appColors.colorGold,
          fontSize: textSmall
        ),),
      ),
    );
  }

  void _requestDownload() async {
    Directory? directory = Directory("");
    String saveDir;
    if (Platform.isAndroid) {
      directory = Directory("/storage/emulated/0/Download");
    } else {
      directory = await getApplicationDocumentsDirectory();
    }

    print('Directory ===> ${directory.path}');
    // final String timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    // final String fileName = 'MIFile_$timestamp.pdf';

    int fileCount = 0;
    String fileName;
    do {
      fileCount++;
      fileName = fileCount == 1 ? 'MIFile.pdf' : 'MIFile-${fileCount-1}.pdf';
    } while (await File('${directory.path}/$fileName').exists());

    await FlutterDownloader.enqueue(
      url: "http://englishonlineclub.com/pdf/iOS%20Programming%20-%20The%20Big%20Nerd%20Ranch%20Guide%20(6th%20Edition)%20[EnglishOnlineClub.com].pdf",
        savedDir: directory.path,
      // savedDir: Platform.isIOS ? "${directory.path}/downloads" : directory.path,
      fileName: fileName,
      showNotification: true,
      openFileFromNotification: true,
    );
  }

  Future<bool> _checkPermission() async {
    if (Platform.isIOS) {
      return true;
    }

    if (Platform.isAndroid) {
      // final info = await DeviceInfoPlugin().androidInfo;
      // if (info.version.sdkInt > 28) {
      //   return true;
      // }

      final status = await Permission.storage.status;
      if (status == PermissionStatus.granted) {
        return true;
      }

      final result = await Permission.storage.request();
      return result == PermissionStatus.granted;
    }

    throw StateError('unknown platform');
  }

}

