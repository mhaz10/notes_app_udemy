import 'package:flutter/material.dart';
import 'package:notes_app_udemy/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: TextStyle(color: Colors.white, fontSize: 28)),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}



