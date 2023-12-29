import 'package:flutter/material.dart';
import 'package:mint_portal/component/mint-drawer.dart';
import 'package:mint_portal/component/mint-navbar.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MintDrawer(),
      appBar: MintAppBar(),
      body: _body(),
    );
  }

  _body(){
    return Container(
      child: Column(

      ),
    );
  }

}