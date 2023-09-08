import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/explore_page/explore_page.dart';
import 'package:indeoendent_tourist_app_main/history_page/history_page.dart';
import 'package:indeoendent_tourist_app_main/recommended_page.dart';
import 'package:indeoendent_tourist_app_main/side_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: flexploreAppBar(context),
          backgroundColor: const Color(0xfff6f1f1),
          body: const TabBarView(
            children: [
              RecommendedPage(),
              HistoryPage(),
              ExplorePage(),
            ],
          ),
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

  AppBar flexploreAppBar(BuildContext context) {
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
      actions: [
        Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(Icons.account_circle_outlined)))
      ],
    );
  }
}
