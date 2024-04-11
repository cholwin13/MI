import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';

class DateHome extends StatelessWidget {
  const DateHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("open picker dialog"),
              onPressed: () async {
                var datePicked = await DatePicker.showSimpleDatePicker(
                  context,
                  // initialDate: DateTime(2020),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2090),
                  dateFormat: "dd-MMMM-yyyy",
                  locale: DateTimePickerLocale.en_us,
                  looping: true,
                );

                final snackBar =
                SnackBar(content: Text("Date Picked $datePicked"));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (_) => WidgetPage()));
            //   },
            //   child: Text('Show Picker'),
            // ),
          ],
        ),
      ),
    );
  }
}


class WidgetPage extends StatefulWidget {
  const WidgetPage({super.key});

  @override
  State<WidgetPage> createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.grey[900]!,
                  Colors.black,
                ],
                stops: const [0.7, 1.0]
              )
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: DatePickerWidget(
                      looping: false,
                      firstDate: DateTime.now(),
                      dateFormat: "dd/MMMM/yyyy",
                      locale: DatePicker.localeFromString('th'),
                      onChange: (DateTime newDate, _){
                        setState(() {
                          _selectedDate = newDate;
                        });
                        print(_selectedDate);
                      },
                      pickerTheme: DateTimePickerTheme(
                        backgroundColor: Colors.transparent,
                        itemTextStyle: TextStyle(color: Colors.white, fontSize: 19),
                        dividerColor: Colors.white,
                      ),
                    ),
                  ),
                  Text('${_selectedDate}'),
                ],
              ),
            ),
          ),
        )
    );
  }
}
