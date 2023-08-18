
import 'package:flutter/material.dart';



class TripInfo extends StatelessWidget {
  const TripInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        body:
        Container(
          color: const Color(0xfff6f1f1),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 300, //change according to the size of the map and other widgets
                ),
                StopsComponent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StopsComponent extends StatelessWidget {
  StopsComponent({Key? key}) : super(key: key);

  final List<String> stops = [
    'Galaa Bridge',
    'Azza Ice cream',
    'Sea View',
    'Shalaby horse Riding',
    'Stop 5'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int noOfStops = stops.length;
    return Expanded(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                '$noOfStops stops',
                style: const TextStyle(fontSize: 19),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: stops.length,
                itemBuilder: (context, i) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(32),
                        child: Row(
                          children: [
                            SizedBox(width: size.width * 0.1),
                            const Icon(Icons.arrow_right_outlined,),
                            Text(stops[i]),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 40,
                        child: Container(
                          height: size.height * 0.6,
                          width: 1.0,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Container(
                            height: 20.0,
                            width: 20.0,
                            decoration: BoxDecoration(
                              color: Colors.blue,//const Color(0xff19a7ce),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
