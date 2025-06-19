import 'package:flutter/material.dart';

import '../../../widgets/icon_widget.dart';
import '../dashboard/dashboard_screen.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key, required this.title});

  final String title;

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  // Added missing game of thrones characters list
  final List<Map<String, String>> gameOfThronesCharacters = [
    {'name': 'Jon Snow', 'house': 'Stark'},
    {'name': 'Daenerys Targaryen', 'house': 'Targaryen'},
    {'name': 'Tyrion Lannister', 'house': 'Lannister'},
    {'name': 'Arya Stark', 'house': 'Stark'},
    {'name': 'Cersei Lannister', 'house': 'Lannister'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Widgets'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Action for search button
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Action for notifications button
            },
          ),
        ],
        backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black12),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Text(
                    ' Game of Thrones Characters.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(height: 8.0),
                  // Made the image expanded to fill width
                  Container(
                    width: double.infinity,
                    height: 200, // Added fixed height for better appearance
                    child: Image.network(
                      'https://static1.cbrimages.com/wordpress/wp-content/uploads/2018/01/Game-of-Thrones-Ned-Stark-Iron-Throne.jpg?q=50&fit=crop&w=1140&h=&dpr=1.5',
                      fit: BoxFit.cover, // Makes the image cover the container
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: gameOfThronesCharacters.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final character = gameOfThronesCharacters[index];
                  final isOdd = index.isOdd;
                  return ListTile(
                    tileColor:
                        isOdd
                            ? Colors.yellowAccent.withOpacity(0.2)
                            : Colors.grey[200],
                    leading: MyIcon(Icons.person),
                    title: Text(character['name']!),
                    subtitle: Text(character['house']!),
                    trailing: MyIcon(Icons.arrow_forward),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardScreen()),
              ),
              child: MyIcon(Icons.dashboard),
            ),
            MyIcon(Icons.home, color: const Color.fromARGB(255, 39, 59, 175), size: 54.0),
            MyIcon(Icons.logout),
          ],
        ),
      ),
    );
  }
}