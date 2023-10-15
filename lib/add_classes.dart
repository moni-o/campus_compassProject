import 'package:flutter/material.dart';

class AddClassSchedule extends StatefulWidget {
  const AddClassSchedule({super.key});

  final String title = "Class Schedule";

  @override
  State<AddClassSchedule> createState() => _AddClassScheduleState();
}

class _AddClassScheduleState extends State<AddClassSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // has two properties - body and appBar
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 73, 144), // color of body of scaffold
        title: Text(widget.title),
        actions: <Widget>[
          Row(
            children: [
              InkWell( // our + button
                onTap: () {
                  print("edit Icon Tapped");
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Icon(Icons.edit),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: SizedBox(
                  height: kToolbarHeight,
                  child: Image.asset(
                    'assets/images/SHSU_Primary_Logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ), 
        ],
      ),
      body: Stack(
        children: <Widget>[
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'This is a test field',
                ),
              ],
            ), // Existing centered content
          ),
          Align( // New aligned icon
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  showDialog( // function that shows our pop up dialog box
                    context: context, // context of our current screen
                    builder: (context){
                      return AlertDialog(
                        title: const Text('Add a Class'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField( // Our course field
                              decoration:  const InputDecoration(labelText: 'Course Name'),
                            ),
                            TextFormField( // Our course field
                              decoration:  const InputDecoration(labelText: 'Course Number'),
                            ),
                            TextFormField( // Our course field
                              decoration:  const InputDecoration(labelText: 'Course Building'),
                            ),
                            TextFormField( // Our course field
                              decoration:  const InputDecoration(labelText: 'Course Room Number'),
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // close the dialog
                            }, 
                            child: const Text('Cancel'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // close the dialog
                              }, 
                            child: const Text('Add Class'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Image.asset(
                  'assets/images/paw_thick.png',
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}