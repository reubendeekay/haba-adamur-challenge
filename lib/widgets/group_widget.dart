import 'package:adamur/models/group_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroupWidget extends StatelessWidget {
  const GroupWidget({super.key, required this.group});
  final GroupModel group;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 25),
      child: Column(children: [
        Stack(
          children: [
            Container(
              height: 70,
              width: 70,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey[200], shape: BoxShape.circle),
              child: Image.asset('assets/${group.image}'),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/compass.png',
                height: 23,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '#${group.title}',
          style: GoogleFonts.inter(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          '${group.numOfMembers} people',
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        )
      ]),
    );
  }
}
