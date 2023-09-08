import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/trip_info.dart';

class EditTrip extends StatefulWidget {
  const EditTrip({super.key});

  @override
  State<EditTrip> createState() => _EditTripState();
}

class _EditTripState extends State<EditTrip> {
  
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
        int noOfStops=stops.where((e) => !e.isRemoved).length;
        int noOfRemovedStops=stops.length-noOfStops;
print(size.height);
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text('Edit Trip'),
      ),
      body: Column(
        children: [
          Container(height: (size.height-120)*(noOfStops/stops.length),
          
          child:Column(
        children: [
          Container(
            child: Text('Current Stops'),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: stops.length,
                  itemBuilder: (context, i) {
                    if (stops[i].isRemoved) {
                      return SizedBox.shrink();
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
          Container(height: (size.height-100)*(noOfRemovedStops/stops.length),
          
          child:Column(
        children: [
          Container(
            child: Text('Removed Stops'),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: stops.length,
                  itemBuilder: (context, i) {
                    if (!stops[i].isRemoved) {
                      return SizedBox.shrink();
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
      stops[index].isRemoved=true;
      print(index);     
           });
      
    }
  
    void addStop(int index) {
    setState(() {
      stops[index].isRemoved=false;
      print(index);     
           });
      
    }
  
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
          MaterialPageRoute(builder: (context) => const TripInfo()),
        );
      },
    );
  }
}
