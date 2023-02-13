import 'package:adamur/utils/lists.dart';
import 'package:flutter/material.dart';

class MyNav extends StatelessWidget {
  const MyNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 1))
          ],
        ),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
              4,
              (index) => GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.orange,
                          content: Text('You tapped on Page ${index + 1}!'),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/${bottomNavIcons[index]}',
                      height: 30,
                    ),
                  )),
        ));
  }
}
