import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/icon_widget.dart';
import '../dashboard/dashboard_screen.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key, required this.title});

  final String title;

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final List<Map<String, String>> gameOfThronesCharacters = [
    {
      'name': 'Jon Snow',
      'house': 'Stark',
      'image': 'https://static.wikia.nocookie.net/gameofthrones/images/d/d0/JonSnow8x06.PNG',
      'role': 'Lord Commander of the Night\'s Watch and King in the North'
    },
    {
      'name': 'Daenerys Targaryen',
      'house': 'Targaryen',
      'image': 'https://static.wikia.nocookie.net/gameofthrones/images/4/4f/Daenerys_Season_8.jpg',
      'role': 'Mother of Dragons and Queen of the Seven Kingdoms'
    },
    {
      'name': 'Tyrion Lannister',
      'house': 'Lannister',
      'image': 'https://static.wikia.nocookie.net/gameofthrones/images/9/95/HandoftheKingTyrionLannister.PNG',
      'role': 'Hand of the Queen and Master of Coin'
    },
    // Add image and role for other characters
    {'name': 'Arya Stark', 'house': 'Stark', 'image': 'https://static.wikia.nocookie.net/gameofthrones/images/b/be/AryaShipIronThrone.PNG', 'role': 'Faceless Assassin'},
    {'name': 'Cersei Lannister', 'house': 'Lannister', 'image': 'https://static.wikia.nocookie.net/gameofthrones/images/b/b0/S8_Cersei_Crop.jpg', 'role': 'Queen of the Seven Kingdoms'},
    {'name': 'Sansa Stark', 'house': 'Stark', 'image': 'https://static.wikia.nocookie.net/gameofthrones/images/6/63/QueenSansa.PNG', 'role': 'Queen in the North'},
    {'name': 'Bran Stark', 'house': 'Stark', 'image': 'https://static.wikia.nocookie.net/gameofthrones/images/d/d0/BranKingSeriesFinalEnd.PNG', 'role': 'King of the Six Kingdoms'},
    {'name': 'Jaime Lannister', 'house': 'Lannister', 'image': 'https://static.wikia.nocookie.net/gameofthrones/images/e/eb/Jaime_infobox_new.jpg', 'role': 'Kingsguard and Lord Commander'},
    {'name': 'Petyr Baelish', 'house': 'Baelish', 'image': 'https://static.wikia.nocookie.net/gameofthrones/images/1/1f/Littlefinger_7x04.png', 'role': 'Master of Coin and Lord Protector of the Vale'},
    {'name': 'Sandor Clegane', 'house': 'Clegane', 'image': 'https://static.wikia.nocookie.net/gameofthrones/images/4/4c/Sandor_Clegane_Season_8.PNG', 'role': 'The Hound and Sworn Shield'},
    {'name': 'Jorah Mormont', 'house': 'Mormont', 'image': 'https://static.wikia.nocookie.net/gameofthrones/images/2/2d/JorahLongclaw.PNG', 'role': 'Knight and Advisor to Daenerys Targaryen'},
    {'name': 'Theon Greyjoy', 'house': 'Greyjoy', 'image': 'https://static.wikia.nocookie.net/gameofthrones/images/d/d3/TheonS8E1.PNG', 'role': 'Prince of the Iron Islands'},
    {'name': 'Brienne of Tarth', 'house': 'Tarth', 'image': 'https://static.wikia.nocookie.net/gameofthrones/images/0/0a/BrienneSnowS8E2.PNG', 'role': 'Knight of the Seven Kingdoms and Lord Commander of the Kingsguard'},
    {'name': 'Samwell Tarly', 'house': 'Tarly', 'image': 'https://static.wikia.nocookie.net/gameofthrones/images/e/e9/Sam_at_Winterfell.jpg', 'role': 'Grand Maester of the Six Kingdoms'},
    {'name': 'Varys', 'house': 'None', 'image': 'https://static.wikia.nocookie.net/gameofthrones/images/0/01/Varys_S8_EP5.jpg', 'role': 'Master of Whisperers'},
    {'name': 'Melisandre', 'house': 'None', 'image': 'https://static.wikia.nocookie.net/gameofthrones/images/4/46/Melisandre_The_Queen%27s_Justice_Infobox.PNG', 'role': 'Red Priestess of the Lord of Light'},
    {'name': 'Ramsay Bolton', 'house': 'Bolton', 'image': 'https://static.wikia.nocookie.net/gameofthrones/images/d/dd/Battle_of_the_Bastards_42.jpg', 'role': 'Lord of Winterfell and Warden of the North'},
    {'name': 'Gendry', 'house': 'Baratheon', 'image': 'https://static.wikia.nocookie.net/gameofthrones/images/5/59/Gendry_S8.jpg', 'role': 'Lord of Storm\'s End'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar code remains the same
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Action for menu button
          },
        ),
        title: Text(
          widget.title,
          style: GoogleFonts.cinzel(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Action for search button
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Action for notifications button
            },
          ),
        ],
        backgroundColor: const Color(0xFF1C2526),
        elevation: 0,
      ),
      body: Container(
        // Body container remains the same
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1C2526), Color(0xFF2E3B3E)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Game of Thrones Characters',
                    style: GoogleFonts.cinzel(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16.0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/en/d/d8/Game_of_Thrones_title_card.jpg',
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const Center(child: CircularProgressIndicator());
                        },
                        errorBuilder: (context, error, stackTrace) => const Icon(
                          Icons.broken_image,
                          size: 50,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: gameOfThronesCharacters.length,
                itemBuilder: (context, index) {
                  final character = gameOfThronesCharacters[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      color: index.isOdd ? Colors.white10 : Colors.white24,
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(16.0),
                        leading: CircleAvatar(
                          backgroundColor: const Color(0xFFAF9E4D),
                          child: MyIcon(
                            Icons.person,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        title: Text(
                          character['name']!,
                          style: GoogleFonts.lora(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          'House: ${character['house']}',
                          style: GoogleFonts.lora(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                        trailing: MyIcon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xFFAF9E4D),
                          size: 20,
                        ),
                        onTap: () {
                          // Show character details in a dialog
                          _showCharacterDetails(character);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // Bottom navigation remains the same
        height: 80,
        decoration: BoxDecoration(
          color: const Color(0xFF1C2526),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(
              icon: Icons.dashboard,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardScreen()),
              ),
            ),
            _buildNavItem(
              icon: Icons.home,
              color: const Color(0xFFAF9E4D),
              size: 36.0,
              isActive: true,
            ),
            _buildNavItem(icon: Icons.logout),
          ],
        ),
      ),
    );
  }

  // New method to show character details
  void _showCharacterDetails(Map<String, String> character) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: const Color(0xFF1C2526),
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: const Color(0xFFAF9E4D), width: 2),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  character['name'] ?? 'Character',
                  style: GoogleFonts.cinzel(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Container (
                    height: 300,
                    width: double.infinity,
                    child: Image.network(
                      character['image']!,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const Center(child: CircularProgressIndicator());
                      },
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 300,
                        color: const Color.fromARGB(255, 27, 27, 27),
                        child: const Center(
                          child: Icon(
                            Icons.broken_image,
                            size: 50,
                            color: Color.fromARGB(137, 255, 249, 249),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  'House: ${character['house']}',
                  style: GoogleFonts.lora(
                    fontSize: 18,
                    color: const Color(0xFFAF9E4D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  character['role'] ?? 'Unknown role',
                  style: GoogleFonts.lora(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFAF9E4D),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      'Close',
                      style: GoogleFonts.cinzel(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    Color color = Colors.white,
    double size = 28.0,
    bool isActive = false,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: isActive ? Colors.white10 : Colors.transparent,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: MyIcon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}