import 'package:flutter/material.dart';

class CheckBoxTest extends StatefulWidget {
  const CheckBoxTest({super.key});

  @override
  State<CheckBoxTest> createState() => _CheckBoxTestState();
}

class _CheckBoxTestState extends State<CheckBoxTest> {
  bool isChecked = false;
  bool isPaid = false;
  bool isRest = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
              direction: Axis.horizontal,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: -15,
              children: [
                Checkbox(
                  // title: Text("title text"), //    <-- label
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                  // controlAffinity: ListTileControlAffinity.leading,
                ),
                const Text("Paid")
              ]),
          Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: -20,
            children: [
              Checkbox(
                value: isPaid,
                onChanged: (bool? value) {
                  setState(() {
                    isPaid = value ?? false;
                  });
                },
              ),
              const Text("Paid"),
            ],
          ),
          Wrap(
              direction: Axis.horizontal,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: -5,
              children: [
                Checkbox(
                  value: isRest,
                  onChanged: (bool? value) {
                    setState(() {
                      isRest = value ?? false;
                    });
                  },
                  checkColor: Colors.white,
                  activeColor: Colors.cyan,
                ),
                const Text("Rest"),
              ],
          ),
        ],
      ),
    );
  }
}
