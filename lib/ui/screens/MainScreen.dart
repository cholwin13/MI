// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
//
// import '../widgets/custom_buttom_navigation_bar.dart';
//
//
// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key, required this.child});
//   final StatefulNavigationShell child;
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: widget.child,
//       // bottomNavigationBar: BottomNavigationBar(
//       //   type: BottomNavigationBarType.fixed,
//       //   currentIndex: widget.child.currentIndex,
//       //   onTap: (index) async {
//       //     widget.child.goBranch(
//       //       index,
//       //       initialLocation: index == widget.child.currentIndex,
//       //     );
//       //
//       //   },
//       //   items: const [
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.home),
//       //       label: 'home',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.search),
//       //       label: 'search',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.settings),
//       //       label: 'settings',
//       //     ),
//       //   ],
//       // ),
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: widget.child.currentIndex,
//         onTap: (index) async {
//           widget.child.goBranch(index,
//             initialLocation: index == widget.child.currentIndex,
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_buttom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<MainScreen> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainScreen> {
  int selectedIndex = 0;

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: widget.navigationShell,
        bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: widget.navigationShell.currentIndex,
            onTap: (index) async {
              widget.navigationShell.goBranch(
                index,
                initialLocation: index == widget.navigationShell.currentIndex,
              );
            }));
  }
}
