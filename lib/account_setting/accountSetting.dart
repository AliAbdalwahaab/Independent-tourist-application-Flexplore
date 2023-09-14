import 'package:flutter/material.dart';

class AccountSettingsPage extends StatefulWidget {
  const AccountSettingsPage({super.key});

  @override
  State<AccountSettingsPage> createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  final TextEditingController firstNameController =
      TextEditingController(text: 'John');
  final TextEditingController lastNameController =
      TextEditingController(text: 'Doe');
  final TextEditingController emailController =
      TextEditingController(text: 'johndoe@gmail.com');
  final TextEditingController phoneNumberController =
      TextEditingController(text: '1234567890');
  bool isEditing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Settings"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                isEditing = true;
              });
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.edit), // Edit icon
                SizedBox(
                    width: 8.0), // Add some space between the icon and text
                Text("Edit Profile"),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Wrap the Column in a SingleChildScrollView
        child: Column(
          children: [
            const SizedBox(
                height: 16.0), // Add some space between the top edges
            Container(
              width: 175.0,
              height: 175.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Make the container circular
                border: Border.all(
                  color: Colors.black, // Border color
                  width: 2.0, // Border width
                ),
              ),
              child: Image.asset(
                'assets/images/profile2.png', // Replace with your image asset path
                fit:
                    BoxFit.cover, // Make the image cover the circular container
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: firstNameController,
                    decoration: const InputDecoration(
                      labelText: 'First Name',
                      labelStyle: TextStyle(fontSize: 28.0),
                    ),
                    enabled:
                        isEditing, // Set this property to false to make it uneditable
                  ),
                  TextField(
                    controller: lastNameController,
                    decoration: InputDecoration(
                        labelText: 'Last Name',
                        labelStyle: const TextStyle(fontSize: 28.0),
                        enabled: isEditing),
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: const TextStyle(fontSize: 28.0),
                        enabled: isEditing),
                  ),
                  TextField(
                    controller: phoneNumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: const TextStyle(fontSize: 28.0),
                        enabled: isEditing),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ), // Add some space between the text fields and buttons
                  if (isEditing)
                    ElevatedButton(
                      onPressed: () {
                        // Disable editing mode
                        setState(() {
                          isEditing = false;
                        });

                        // Show a dialog to indicate that changes are saved
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Changes Saved"),
                              content: const Text(
                                  "Your profile changes have been saved."),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                  },
                                  child: const Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: const Text("Save Profile"),
                    ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'verification',
                        style: TextStyle(
                          fontSize: 18.0, // Adjust the font size as needed
                          // Make the text bold
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 4.0), // Add some space between the text
                      Text(
                        'Account Status',
                        style: TextStyle(
                          fontSize: 21.0, // Adjust the font size as needed
                          fontWeight: FontWeight.bold, // Make the text bold
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.check,
                        color: Color.fromARGB(
                            255, 43, 231, 50), // Set the icon color to green
                        size:
                            36.0, // Set the icon size to 36.0 (adjust as needed)
                      ),
                      SizedBox(
                          width:
                              8.0), // Add some space between the icon and text
                      Text(
                        "Verified",
                        style: TextStyle(
                          fontSize: 18.0, // Enlarge the text font size
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
