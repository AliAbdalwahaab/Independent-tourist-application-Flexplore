import 'package:flutter/material.dart';

class EditTripPage extends StatefulWidget {
  const EditTripPage({super.key});

  @override
  State<EditTripPage> createState() => _EditTripPageState();
}

class _EditTripPageState extends State<EditTripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: editTripPageAppBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }

  AppBar editTripPageAppBar(){
    return AppBar(
      backgroundColor: const Color(0xFFF6F1F1),
      elevation: 0,
      title: const Text(
        "Edit Trip",
        style: TextStyle(
          color: Colors.black
        ),
      ),
      leading: const BackButton(
        color: Colors.black,
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
              onPressed: (){},
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
