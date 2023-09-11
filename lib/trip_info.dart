import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/buttons/start_button.dart';
import 'package:indeoendent_tourist_app_main/during_trip/stop.dart';
import 'package:indeoendent_tourist_app_main/recommended_page.dart';
import 'homePage.dart';
import 'package:indeoendent_tourist_app_main/editTrip.dart';
import 'package:indeoendent_tourist_app_main/during_trip/DuringTrip.dart';

// class Stop {
//   final String name;
//   final String description;
//   final String imageUrl;

//   Stop({
//     required this.name,
//     required this.description,
//     required this.imageUrl,
//   });
// }
// int tripNo=1;
// List<Stop> stops = Stop.getTripStops(tripNo);
class TripInfo extends StatelessWidget {
  const TripInfo({Key? key, required this.tripNumber}) : super(key: key);
  final tripNumber;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
        ),
        body: Container(
          color: const Color(0xfff6f1f1),
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Container(
                //   height:
                //       20, //change according to the size of the map and other widgets
                // ),
                const Image(
                  image: NetworkImage(
                      'https://img.youm7.com/ArticleImgs/2022/4/3/72444-%D8%B4%D8%A7%D8%B1%D8%B9-%D8%A7%D9%84%D9%85%D8%B9%D8%B2-%D9%84%D9%8A%D9%84%D8%A7.jpg'),
                ),
                const AreaAndTheme(),
                StopsComponent(
                  tripNumber: tripNumber,
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }

 
}

class AreaAndTheme extends StatelessWidget {
  const AreaAndTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.all(5),
      color: Color.fromARGB(255, 92, 174, 241),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'EL Moez Street', //change according to the name of the trip
            style: TextStyle(fontSize: 35),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Islamic Era', //change according to the era of the trip
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              width: 20,
            ),
            Text(
              '120 mins', //change according to the time of the trip
              style: TextStyle(fontSize: 20),
            ),
            Spacer(),
            Text(
              '\$120', //change according to the price of the trip
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 20,
            ),
          ]),
        ],
      ),
    );
  }
}

class StopsComponent extends StatefulWidget {
  StopsComponent({super.key, required this.tripNumber})
      : stops = getStops(tripNumber);
  final int tripNumber;
    List<Stop> stops;
   
  static List<Stop> getStops(int tripNum) {
    return Stop.getTripStops(tripNum);
  }
   List<Stop> getEditedTrip() {
    List<Stop>temp=stops.where((e) => !e.isRemoved).toList();
    temp[0].isActive=true;
    return temp;
  }

  @override
  State<StopsComponent> createState() => _StopsComponentState();
}

class _StopsComponentState extends State<StopsComponent> {
  Future<void> editTrip(BuildContext context) async {
    
    
    widget.stops = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  EditTrip(stops:widget.stops)),
    );
    setState(() {});
  }

  // final List<Stop> stops = [
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int noOfStops = widget.stops.where((e) => !e.isRemoved).length;

    return Expanded(
      child: Column(
        children: [
          // const SizedBox(
          //   height: 30,
          // ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$noOfStops stops',
                    style: const TextStyle(fontSize: 19),
                  ),
                  IconButton(
                      onPressed: () {
                        editTrip(context);
                      },
                      icon: const Icon(Icons.edit)),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: widget.stops.length,
                itemBuilder: (context, i) {
                  if (widget.stops[i].isRemoved) {
                    return const SizedBox.shrink();
                  } else {
                    return GestureDetector(
                      onTap: () {
                        _showStopDetails(context, widget.stops[i]);
                      },
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(32),
                                child: Row(
                                  children: [
                                    SizedBox(width: size.width * 0.1),
                                    const Icon(
                                      Icons.arrow_right_outlined,
                                    ),
                                    Text(widget.stops[i].name),
                                  ],
                                ),
                              ),
                            ],
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
                                  color: Colors.blue, //const Color(0xff19a7ce),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                }),
          ),
          Center(child: StartButton(      onTap: startTrip,)),
        ],
      ),
    );
  }

  List<Stop> getEditedTrip() {
    List<Stop>temp=widget.stops.where((e) => !e.isRemoved).toList();
    temp[0].isActive=true;
    return temp;
  }
  static void startTrip() {
          print('The trip has started');
  }
}

void _showStopDetails(BuildContext context, Stop stop) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(stop.image),
            Text(stop.name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(stop.description),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close'),
            ),
          ],
        ),
      );
    },
  );
}

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {
        //go to the main page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      },
    );
  }
}
