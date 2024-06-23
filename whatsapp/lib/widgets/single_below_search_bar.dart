import 'package:flutter/material.dart';

class SingleBelowSearchBar extends StatefulWidget {
  final VoidCallback onTap;
  final String title;
  const SingleBelowSearchBar(
      {super.key, required this.onTap, required this.title});

  @override
  State<SingleBelowSearchBar> createState() => _SingleBelowSearchBarState();
}

class _SingleBelowSearchBarState extends State<SingleBelowSearchBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(0.4),
          ),
        ),
      ),
    );
  }
}
