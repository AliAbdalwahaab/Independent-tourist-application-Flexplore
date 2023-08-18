import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indeoendent_tourist_app_main/recommended_page.dart';
import 'package:indeoendent_tourist_app_main/side_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 10,
        child: Scaffold(
          appBar: flexploreAppBar(),
          backgroundColor: const Color(0xfff6f1f1),
          body: const RecommendedPage(),
          drawer: const LeftSubMenu(
            username: "John Doe",
            email: "johndoe@example.com",
          ),
          endDrawer: const RightSubMenu(
            tripDestination: "Paris",
            tripDate: "2023-08-15",
          ),
        ));
  }

  AppBar flexploreAppBar() {
    return AppBar(
      title: const Text(
        "Flexplore Logo",
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      bottom: const PreferredSize(
        preferredSize: Size(0, 50),
        child: ColoredBox(
          color: Color(0xffafd3e2),
          child: TabBar(
            tabs: [
              Tab(
                text: "Recommended",
              ),
              Tab(
                text: "History",
              ),
              Tab(
                text: "Explore",
              )
            ],
          ),
        ),
      ),
      elevation: 0,
      centerTitle: true,
      backgroundColor: const Color(0xff146c94),
    );
  }
}
