import 'package:flutter/material.dart';

/// Flutter code sample for [NavigationBar].

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: new AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 1,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hi, Alif",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const Text(
              "Your patience is waiting today",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 55,
                  width: 55,
                  child: const CircleAvatar(
                    radius: 27.5, // Half the size of the container
                    backgroundImage: AssetImage("assets/images/mercy.jpg"),
                    backgroundColor: Colors
                        .transparent, // Set the background color to transparent
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Container(
              child: Text(
                "Appointment Today",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Container(
              height: 100,
              width: deviceWidth,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: const CircleAvatar(
                      radius: 27.5, // Half the size of the container
                      backgroundImage: AssetImage("assets/images/mercy.jpg"),
                      backgroundColor: Colors
                          .transparent, // Set the background color to transparent
                    ),
                  ),
                  Text("Randi"),
                  Text("20 Years old")
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Container(
              child: Container(
                child: Text(
                  "Setup Your App, Doctor",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Container(
              height: 60,
              width: deviceWidth,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 132, 220, 135),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Icon(
                      Icons.chat,
                      size: 30,
                    ),
                  ),
                  Text(
                    "Setting Chat",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: GestureDetector(
              onTap: () {
                print("oawja");
              },
              child: Container(
                height: 60,
                width: deviceWidth,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 146, 183, 248),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Icon(
                        Icons.calendar_month_rounded,
                        size: 30,
                      ),
                    ),
                    Text(
                      "Setting Appointment",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Icon(Icons.event_note),
            label: 'Schedule',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.note),
            icon: Icon(Icons.chat),
            label: 'Message',
          ),
        ],
      ),
    );
  }
}
