import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/spacer.dart';

class Archived extends StatefulWidget {
  const Archived({super.key});

  @override
  State<Archived> createState() => _ArchivedState();
}

class _ArchivedState extends State<Archived> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.only(
          left: 22,
          top: 15,
          right: 22,
        ),
        child: Row(
          children: [
            Icon(
              Icons.archive_outlined,
              size: 30,
              // color: Colors.grey.withOpacity(0.7),
            ),
            AddHorizontalSpace(
              width: 25,
            ),
            Text(
              "Archived",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                // color: Colors.grey.withOpacity(0.7),
                fontSize: 18,
              ),
            ),
            Spacer(),
            Text(
              "2",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
