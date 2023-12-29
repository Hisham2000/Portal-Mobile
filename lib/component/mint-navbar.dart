import 'package:flutter/material.dart';

class MintAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Image(
        image: AssetImage("images/5.png"),
        width: 60,
        height: 60,
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
            color:  Color(0xFFFFD700), // Set the background color
          ),
          child: TextButton(
          onPressed: () {
            // Add your button action here
            print('Button pressed!');
          },
          child: Text(
            'Free Consolation',
            style: TextStyle(
              color: Colors.white,
              // Set the text color
            ),
          ),
        ),),

      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);
}
