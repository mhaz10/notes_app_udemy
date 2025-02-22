import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xffFFCC80)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text("Flutter Tips", style: TextStyle(color: Colors.black, fontSize: 26)),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text('Build your career whit tharwat samy', style: TextStyle(color: Colors.black.withOpacity(.4), fontSize: 18)),
            ),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: Colors.black,size: 30,)),
          ),
          Text('May21, 2022', style: TextStyle(color: Colors.black.withOpacity(.4)))
        ],
      ),
    );
  }
}