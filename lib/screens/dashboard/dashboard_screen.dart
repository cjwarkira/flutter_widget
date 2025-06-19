import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard Screen')),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
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
                    'Flutter Widgets that demonstrates the use of ListView with Horizontal Scroll.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
            ),
            // Horizontal ListView
            Container(
              height: 180,
              margin: EdgeInsets.symmetric(vertical: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  // Alternating colors for items
                  final bool isOdd = index % 2 != 0;
                  return Container(
                    width: 100,
                    margin: EdgeInsets.symmetric(horizontal: 0),
                    decoration: BoxDecoration(
                      color: isOdd ? Color.fromARGB(255, 243, 171, 62) : const Color.fromARGB(255, 31, 113, 189),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isOdd ? const Color.fromARGB(255, 32, 7, 7) : const Color.fromARGB(255, 235, 233, 217),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Vertical ListView Title
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'And this is ListView with Vertical Scroll.',
                style: TextStyle(fontSize: 14, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),

            // Vertical ListView
            Expanded(
              child: ListView.builder(
                itemCount: 18,
                itemBuilder: (context, index) {
                  // Alternating background colors
                  final bool isEven = index % 2 == 0;
                  final backgroundColor =
                      isEven ? Colors.grey[200] : Color(0xFFFFFCD0);

                  return Container(
                    color: backgroundColor,
                    child: ListTile(
                      leading: Icon(Icons.arrow_right, size: 16),
                      title: Text(
                        'Name $index',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text('Subtitle for item $index'),
                      trailing: Icon(
                        isEven ? Icons.person : Icons.do_not_disturb,
                        color: Colors.orange,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 4,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
