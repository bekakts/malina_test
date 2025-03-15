import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  final Color backgroundColor;
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback? onTap;
  final double borderRadius;
  final EdgeInsetsGeometry margin;

  const StoreCard({
    super.key,
    required this.backgroundColor,
    required this.imagePath,
    required this.title,
    required this.description,
    this.onTap,
    this.borderRadius = 12,
    this.margin = const EdgeInsets.symmetric(horizontal: 20),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                   Radius.circular(borderRadius)
                ),
                child: Image.asset(
                  imagePath,
                  height: 170,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 23.0, left: 17.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
