import 'package:flutter/material.dart';

class DuringTripPage extends StatelessWidget {
  const DuringTripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: duringTripPageAppBar(),
      drawer: const Drawer(),
      bottomNavigationBar: duringTripPageBottomAppBar(),
      backgroundColor: const Color(0xff146c94),
    );
  }

  BottomAppBar duringTripPageBottomAppBar(){
    return BottomAppBar(
      child: Container(
        color: Colors.blue,
        height: 60,
        child: Row(
          children: [
            const Spacer(),
            const Icon(
              Icons.directions_walk,
              color: Colors.white,
            ),
            const Text(
              "2.3 KM",
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.access_time_filled,
              color: Colors.white,
            ),
            const Text(
              "00 : 00 : 00",
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            const Spacer(),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Colors.red)
                      )
                  )
              ),
              onPressed: (){
                //TODO CODE FOR ENDING THE TRIP GOES HERE!
              },
              child: const Text("End Trip"),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  AppBar duringTripPageAppBar(){
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.blue,
      centerTitle: true,
      title: Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
          bottom: 30
        ),
        height: 35,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xff1D1617).withOpacity(0.11),
              blurRadius: 40,
              spreadRadius: 0.0,
            )
          ]
        ),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(15),
            suffixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide.none
            )
          ),
        ),
      ),
    );
  }
}
