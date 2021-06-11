import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '@Your Fingertips',
    theme: ThemeData(
          primarySwatch: Colors.orange, accentColor: Colors.white),
    home: MainPage(),
  ));
}


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to @Your Fingertips'),
      ),
      body: Center(
        child: Column(
          children: [
            new ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  child: Text('YourLists'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => YourLists()));
                  },
                ),
                ElevatedButton(
                  child: Text('Group Lists'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TeamLists()));
                  },
                ),
                ElevatedButton(
                  child: Text('Settings'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TeamLists()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class YourLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pop(context);
          },
          child: Text('Reverse!'),
        ),
      ),
    );
  }
}


class TeamLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Team Lists"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigate back to first route when tapped.
          },
          child: Text('Back'),
        ),
      ),
    );
  }
}


class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Team Lists"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigate back to first route when tapped.
          },
          child: Text('Back'),
        ),
      ),
    );
  }
}
