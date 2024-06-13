import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            decoration: const BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                  ),
                ]),
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: const Center(
              child: Text(
                'Guido Olguin',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: const Icon(Icons.punch_clock_outlined),
                  title: const Text('Recents'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.file_copy_outlined),
                  title: const Text('Your Files'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text("Recycle Bin"),
                  leading: const Icon(Icons.delete),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text("Your Profile"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.help),
                  title: const Text('Help'),
                  onTap: () {},
                ),
                // Add more ListTiles if needed
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: const ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: null,
            ),
          ),
        ],
      ),
    );
  }
}
