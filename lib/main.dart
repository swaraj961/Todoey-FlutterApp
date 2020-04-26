import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/model/taskdata.dart';
import 'package:todoapp/screen/add_task.dart';

import 'package:todoapp/list_tiles.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      
          child: MaterialApp(
        // debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
          scaffoldBackgroundColor: Colors.purple[600],
        ),
        home: HomePage(),
      ), create: (BuildContext context) => TaskData(), //data to all the other notifier
    );
  }
}

class HomePage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            width: 400,
            height: 600,
            child: Image.asset(
              "assets/image.png",
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            child: Text(
              "Todoey",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold),
            ),
            top: 50,
            left: 20,
          ),
          Positioned(
            child: Icon(
              Icons.list,
              size: 50,
              color: Colors.white,
            ),
            left: 30,
            top: 90,
          ),
          DraggableScrollableSheet(
            maxChildSize: 0.85, //make it scrollable
            builder: (context, ScrollController scollcontroller) {
              // to build content and scrollable
              return Stack(
                children: <Widget>[
                  Container(
                    // for the scroll sheet look
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40)),
                    ),
                    child: Listtiles(
                     
                    controller: scollcontroller,
                    ),
                  ),
                  Positioned(
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0),
                            ),
                          ),
                          context: context,
                          builder: (context) => Addtask(),
                        );
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.pinkAccent,
                    ),
                    left: 300,
                    top: 2,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}


