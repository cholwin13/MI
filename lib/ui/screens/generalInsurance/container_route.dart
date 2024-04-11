import 'package:flutter/material.dart';

class ContainerRoute extends StatelessWidget {
  final Widget? childWidget;

  const ContainerRoute({super.key, this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childWidget,
    );
  }
}
