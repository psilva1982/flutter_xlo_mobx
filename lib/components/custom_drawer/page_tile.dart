import 'package:flutter/material.dart';

class PageTile extends StatelessWidget {
  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highlighted;

  PageTile({
    this.label,
    this.iconData,
    this.onTap,
    this.highlighted,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.label,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: highlighted ? Colors.purple : Colors.black87,
        ),
      ),
      leading: Icon(
        this.iconData,
        color: highlighted ? Colors.purple : Colors.black87,
      ),
      onTap: onTap,
    );
  }
}
