import 'package:flutter/material.dart';
import 'package:mint_portal/utility/constant.dart';
import 'package:url_launcher/url_launcher.dart';

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

  _launchURL() async {
    print("in the function");
    var url = Constant.supportUrl;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _buildBarButton() {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xFFFFD700),
      ),
      child: TextButton(
        onPressed: () {
          _launchURL();
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
  Size get preferredSize => Size.fromHeight(56.0);
}
