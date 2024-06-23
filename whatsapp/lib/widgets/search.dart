import 'package:flutter/material.dart';
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
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.black.withOpacity(0.5),
              size: 25,
            ),
            const AddHorizontalSpace(width: 5),
            Text(
              "Search...",
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
