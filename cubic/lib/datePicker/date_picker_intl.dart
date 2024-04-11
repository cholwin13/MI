import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerIntl extends StatefulWidget {
  const DatePickerIntl({super.key});

  @override
  State<DatePickerIntl> createState() => _DatePickerIntlState();
}

class _DatePickerIntlState extends State<DatePickerIntl> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateInput.text = '';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        height: MediaQuery.of(context).size.width / 3,
        child: Center(
          child: TextField(
            controller: dateInput,
            decoration: InputDecoration(
                icon: Icon(Icons.calendar_today),
              hintText: 'please select Date'
            ),
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                  cancelText: 'CANCEL',
                  barrierColor: Colors.grey
              );
              if(pickedDate != null){
                print(pickedDate);
        
                String formatDate = DateFormat('dd-MM-yyyy').format(pickedDate);
        
                setState(() {
                  dateInput.text = formatDate;
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
