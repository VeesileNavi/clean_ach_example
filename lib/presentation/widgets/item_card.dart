import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData iconData;
  final String title;
  final String? additionalInfo;

  const ItemCard(
      {super.key,
      this.onTap,
      required this.iconData,
      required this.title,
      this.additionalInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: onTap,
        child: Card(
          child: Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  Icon(iconData),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(title),
                  const Spacer(),
                  if (additionalInfo != null) Text(additionalInfo!),
                ],
              )),
        ),
      ),
    );
  }
}
