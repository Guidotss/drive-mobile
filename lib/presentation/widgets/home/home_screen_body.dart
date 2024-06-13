import 'package:expenses_manager/presentation/widgets/home/home.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  HomeScreenBody({super.key});
  final List<dynamic> files = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: files.isEmpty ? const OpenModalButton() : const FilesList(),
    );
  }
}
