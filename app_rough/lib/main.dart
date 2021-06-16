import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

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
        leading: Icon(Icons.account_circle_rounded),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),

      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 200),
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
      )
    );
  }
}


class YourLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My ToDo Lists"),
      ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 545),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                new ButtonBar(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    ElevatedButton(
                      child: Text('Back'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 142),
                    FloatingActionButton.extended(
                      label: Text('Create A New List'),
                      backgroundColor: Colors.orange,
                      focusColor: Colors.white,
                      onPressed: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => YourLists()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}

class TeamLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Team ToDo Lists"),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 545),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                new ButtonBar(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      child: Text('Back'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 142),
                    FloatingActionButton.extended(
                      label: Text('Create A New List'),
                      backgroundColor: Colors.orange,
                      focusColor: Colors.white,
                      onPressed: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => YourLists()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
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


class ToDoManagement extends StatefulWidget {

  final List tasks;
  ToDoManagement({required this.tasks});
  @override
  _ToDoManagementState createState() => _ToDoManagementState();
  }

class _ToDoManagementState extends State<ToDoManagement> {
  Map toDoLists = {};
  addList(){
    var newList;
    toDoLists[newList] = [];

  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          for( var i = 0 ; i < toDoLists.length; i++) {

                          }
          // I want to create a new button for every list in the list
          // list;
        });
      },
    );
  }
}

class ToDoList extends StatefulWidget {
  final String task;
  const ToDoList({required this.task});
  @override
  _ToDoListState createState() => _ToDoListState();
}


class _ToDoListState extends State<ToDoList> {
  List allItems = [];
  @override
  Widget build(BuildContext context) {
    return Text('allItems');
  }
}
/// This is the private State class that goes with MyStatefulWidget. ALSO MAY WANT TO USE THE BELOW FOR CHeckboxes
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   bool isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     Color getColor(Set<MaterialState> states) {
//       const Set<MaterialState> interactiveStates = <MaterialState>{
//         MaterialState.pressed,
//         MaterialState.hovered,
//         MaterialState.focused,
//       };
//       if (states.any(interactiveStates.contains)) {
//         return Colors.blue;
//       }
//       return Colors.red;
//     }
//
//     return Checkbox(
//       checkColor: Colors.white,
//       fillColor: MaterialStateProperty.resolveWith(getColor),
//       value: isChecked,
//       onChanged: (bool? value) {
//         setState(() {
//           isChecked = value!;
//         });
//       },
//     );
//   }
// }


// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }