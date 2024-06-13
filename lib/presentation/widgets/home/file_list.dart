import 'package:flutter/material.dart';

class FilesList extends StatelessWidget {
  const FilesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("File $index"),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("File $index tapped"),
              ),
            );
          },
        );
      },
    );
  }
}