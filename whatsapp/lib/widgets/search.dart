import 'package:flutter/material.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.only(left: 23, top: 10, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.tertiary(context),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.search,
              size: 25,
            ),
            AddHorizontalSpace(width: 5),
            Text(
              "Search...",
              style: TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
