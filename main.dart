import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatefulWidget {
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Points Counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      "$teamApoints",
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamApoints++;
                        });
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamApoints += 2;
                        });
                      },
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamApoints += 3;
                        });
                      },
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
                SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      "$teamBpoints",
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBpoints++;
                        });
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBpoints += 2;
                        });
                      },
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBpoints += 3;
                        });
                      },
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, minimumSize: Size(150, 50)),
                onPressed: () {
                  setState(() {
                    teamApoints = 0;
                    teamBpoints = 0;
                  });
                },
                child: Text(
                  "Reset",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
