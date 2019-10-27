import 'package:flutter/material.dart';
import 'package:flutter_module/screens/image_list.dart';

class ImageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pixabay'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            ListTile(
              contentPadding: const EdgeInsets.all(20.0),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Welcome to the pixabay photo search engine',
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Eg. bike, car,flower',
                        labelText: 'Search Photos'),
                  ),
                  SizedBox(height: 5.0),
                  RaisedButton(
                    color: Colors.teal,
                    onPressed: () {
                      print('searching...');
                    },
                    child: Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ImageList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
