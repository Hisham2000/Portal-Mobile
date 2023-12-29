import 'package:flutter/material.dart';

class MintAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image(
        image: AssetImage("images/5.png"),
        width: 60,
        height: 60,
      ),
      actions: [
        _buildBarButton(),
      ],
    );
  }

  _buildBarButton() {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xFFFFD700), // Set the background color
      ),
      child: TextButton(
        onPressed: () {
          print('Button pressed!');
        },
        child: Text(
          'Free Consolation',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);
}
