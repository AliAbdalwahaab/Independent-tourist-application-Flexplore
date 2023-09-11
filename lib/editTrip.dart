import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/during_trip/stop.dart';

class EditTrip extends StatefulWidget {
  EditTrip({required this.stops, super.key});
  final List<Stop>stops;

  @override
  State<EditTrip> createState() => _EditTripState();
}

class _EditTripState extends State<EditTrip> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
        List <Stop> stops=widget.stops;
        // print(stops);
        int noOfStops=stops.where((e) => !e.isRemoved).length;
        int noOfRemovedStops=stops.length-noOfStops;
        print(noOfRemovedStops);
        print(noOfStops);
        print('\n\n\n');
    return Scaffold(
      appBar: editTripPageAppBar(),
      body: Column(
        children: [
          Container(height: (size.height-200)*(noOfStops/stops.length)+50,
          
          child:Column(
        children: [
          Container(
           color:  const Color(0xffafd3e2),
            width: double.infinity,
            child:const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Text('Current Stops',             
              style: TextStyle(fontSize: 19, 
              color: Colors.white,),
            ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: stops.length,
                  itemBuilder: (context, i) {
                    if (stops[i].isRemoved) {
                      return const SizedBox.shrink();
                    } else {
                      return ListTile(
                        title: Text(
                          stops[i].name,
                        ),
                        trailing: IconButton(onPressed:()=> removeStop(i), icon: const Icon( Icons.remove_circle_outlined,color: Colors.red ),),

                      );
                    }
                  })),
                      Container(height:10)
])),
          Container(height: ((size.height-200)*(noOfRemovedStops/stops.length))+50,
          
          child:Column(
        children: [
          Container(
           color:  const Color(0xffafd3e2),
            width: double.infinity,
            child:const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Text('Removed Stops',             
              style: TextStyle(fontSize: 19, 
              color: Colors.white,),
            ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: stops.length,
                  itemBuilder: (context, i) {
                    if (!stops[i].isRemoved) {
                      return const SizedBox.shrink();
                    } else {
                      return ListTile(
                        title: Text(
                          stops[i].name,
                        ),
                        trailing: IconButton(onPressed:()=> addStop(i), icon: const Icon( Icons.add_circle_outlined,color: Colors.green ),),

                      );
                    }
                  })),
                //  Container(height:10),
                ])
                  )

                 ],
      ),
    );
  }
  void removeStop(int index) {
    setState(() {
      widget.stops[index].isRemoved=true;
      //print(index);     
           });
      
    }
  
    void addStop(int index) {
    setState(() {
      widget.stops[index].isRemoved=false;
      // print(index);     
           });
      
    }
  

  AppBar editTripPageAppBar(){
    return AppBar(
      //backgroundColor: const Color(0xFFF6F1F1),
      elevation: 0,
      title: const Text(
        "Edit Trip",
        style: TextStyle(
          color: Colors.black
        ),
      ),
      leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.of(
          context
        ).pop(widget.stops);
      },
    ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: 20,
            width: 100,
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(0),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60.0),
                    side: const BorderSide(color: Colors.black),
                  )
                ),
                padding: MaterialStateProperty.all(EdgeInsets.zero)
              ),
              child: const Text("Save Changes"),
              onPressed: (){
                Navigator.of(
          context
        ).pop(widget.stops);},
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
