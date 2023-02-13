import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    title: SizedBox(height: 25, child: Image.asset('assets/logo.png')),
    backgroundColor: Colors.transparent,
    centerTitle: true,
    actions: const [
      CircleAvatar(
        backgroundImage: AssetImage('assets/profile.png'),
      ),
      SizedBox(
        width: 15,
      )
    ],
    elevation: 0,
    leading: const Icon(
      Icons.arrow_back_ios,
      color: Colors.grey,
      size: 22,
    ),
  );
}
