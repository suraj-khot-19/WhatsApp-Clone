import 'package:flutter/material.dart';
import 'package:whatsapp/themes/color.dart';
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
      child: Padding(
        padding: const EdgeInsets.only(
          left: 22,
          top: 15,
          right: 22,
        ),
        child: Row(
          children: [
            const Icon(
              Icons.archive_outlined,
              size: 26,
            ),
            const AddHorizontalSpace(
              width: 25,
            ),
            const Text(
              "Archived",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            Text(
              "2",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.primary(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
