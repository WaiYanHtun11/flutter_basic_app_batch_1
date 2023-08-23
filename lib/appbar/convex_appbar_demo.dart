import 'package:convex_bottom_app_bar/convex_bottom_app_bar.dart';
import 'package:flutter/material.dart';
class ConvexAppBarDemo extends StatelessWidget {
  const ConvexAppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexBottomAppBar(
        /// onClick for all BottomSheet items
        onClickParent: null,
        isUseTitle: true,
        selectedColor: Colors.red,
        unselectedColor: Colors.blue,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
        convexBottomAppBarItems: [
          ConvexBottomAppBarItem(
            Icons.home,
            title: "Home",
          ),
          ConvexBottomAppBarItem(
            Icons.search,
            title: "Search",
            titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.lightGreen,
            ),
            selectedColor: Colors.green,
          ),
          ConvexBottomAppBarItem(
            Icons.card_travel,
          ),
          ConvexBottomAppBarItem(
            Icons.favorite_border,
            title: "Fav",
            /// override onClick for only one items
            //overrideOnClick: (index) { },
          ),
        ],
      ),
    );
  }
}
