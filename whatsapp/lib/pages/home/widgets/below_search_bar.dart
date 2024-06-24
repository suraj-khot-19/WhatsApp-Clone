import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home/widgets/single_below_search_bar.dart';

class BelowSearchBar extends StatefulWidget {
  const BelowSearchBar({super.key});

  @override
  State<BelowSearchBar> createState() => _BelowSearchBarState();
}

class _BelowSearchBarState extends State<BelowSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Row(
        children: [
          SingleBelowSearchBar(onTap: () {}, title: "All"),
          SingleBelowSearchBar(onTap: () {}, title: "Unread"),
          SingleBelowSearchBar(onTap: () {}, title: "Groups"),
        ],
      ),
    );
  }
}
