import 'package:flutter/material.dart';
import 'package:notes_app_udemy/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});

  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text( title, style: TextStyle(color: Colors.white, fontSize: 28)),
        Spacer(),
        CustomSearchIcon(
          icon: icon,
          onPressed: onPressed,
        )
      ],
    );
  }
}



