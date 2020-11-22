import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Show alert'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _showAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.pop((context));
        },
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, // Default is true
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          title: Text('Title'),
          content: Column(
            mainAxisSize: MainAxisSize.min, // solo crece lo que contiene dentro
            children: [
              Text('Content: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue euismod leo, sed condimentum libero consectetur sed. '),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            FlatButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel')
            ),
            FlatButton(
              onPressed: () {
                // Here, do something...
                Navigator.of(context).pop();
              },
              child: Text('Ok')
            ),
          ],
        );
      }
    );
  }
}