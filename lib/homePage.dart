import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 10,
        child: Scaffold(
          appBar: flexploreAppBar(),
          backgroundColor: const Color(0xfff6f1f1),
        )
    );
  }

  AppBar flexploreAppBar(){
    return AppBar(
      title: const Text("Flexplore Logo",
        style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
      ),
      bottom: const PreferredSize(
        preferredSize: Size(0, 50),
        child: ColoredBox(color: Color(0xffafd3e2),
          child: TabBar(tabs: [
            Tab(text: "Recommended",),
            Tab(text: "History",),
            Tab(text: "Explore",)
          ],
          ),
        ),

      ),
      elevation: 0,
      centerTitle: true,
      backgroundColor: const Color(0xff146c94),
      leading: GestureDetector(
        onTap: (){
          //TODO WHEN TAPPED CODE GOES HERE
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
          ),
          child: SvgPicture.asset(
            'assets/icons/drawer_icon.svg',
            height: 20,
            width: 20,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: (){
            //TODO WHEN TAPPED CODE GOES HERE
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
            ),
            child: SvgPicture.asset(
              'assets/icons/profile_icon.svg',
              height: 50,
              width: 50,
              colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
        )
      ],
    );
  }
}
