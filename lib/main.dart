import 'package:flutter/material.dart';

import 'manager.dart';
import 'sec.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: new MainScreen());
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('File Shoot'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(110, 100, 110, 100),
              child: Text(
                'File Shoot',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () async {
                    // FilePickerResult result =
                    //     await FilePicker.platform.pickFiles();
                    //
                    // if (result != null) {
                    //   File file = File(result.files.single.path);
                    // } else {
                    //   // User canceled the picker
                    //   print("ERROR");
                    // }
                    //***** code fo tabbed view
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return TabsApp();
                        },
                      ),
                    );
                  },
                  minWidth: 250.0,
                  height: 50.0,
                  child: Text(
                    'Send',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return TryPage();
                        },
                      ),
                    );
                  },
                  minWidth: 250.0,
                  height: 50.0,
                  child: Text(
                    'Receive',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
