import 'package:flutter/material.dart';

class CategoryHome extends StatelessWidget {
  const CategoryHome(
      {Key? key,
      required this.icon,
      required this.title,
      this.hasImage = false,
      this.isSelected = false})
      : super(key: key);
  final String title;
  final dynamic icon;
  final bool isSelected;
  final bool hasImage;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: isSelected ? Colors.grey[200] : null,
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          hasImage
              ? Image.asset(
                  'assets/$icon',
                  height: 20,
                )
              : Icon(icon),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
