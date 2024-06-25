import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class IconNameRow extends StatefulWidget {
  final String title;
  final String? subTitle;
  final IconData icon;
  final bool? isSwitch;
  const IconNameRow(
      {super.key,
      required this.title,
      this.subTitle,
      required this.icon,
      this.isSwitch});

  @override
  State<IconNameRow> createState() => _IconNameRowState();
}

class _IconNameRowState extends State<IconNameRow> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 5),
      child: Row(
        children: [
          Icon(
            widget.icon,
            size: 25,
            color: Theme.of(context).iconTheme.color!.withOpacity(0.6),
          ),
          AddHorizontalSpace(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                // AddVerticleSpace(height: 3),
                widget.subTitle != null
                    ? Text(
                        widget.subTitle!,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.secoundry(context).withOpacity(0.4),
                        ),
                        maxLines: 2,
                      )
                    : SizedBox(),
              ],
            ),
          ),
          widget.isSwitch != null
              ? CupertinoSwitch(
                  value: isSelected,
                  onChanged: (value) {
                    setState(() {
                      isSelected = value;
                    });
                  })
              : SizedBox(
                  width: 65,
                ),
        ],
      ),
    );
  }
}
