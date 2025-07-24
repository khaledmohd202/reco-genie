import 'package:flutter/material.dart';

class CustomFavoriteButton extends StatelessWidget {
  const CustomFavoriteButton({
    required this.size,
    required this.onPressed,
    required this.isFavorite,
    super.key,
  });

  final double size;
  final bool isFavorite;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_outline,
        color:
            isFavorite ? Colors.lightBlueAccent : Colors.white,
        size: size,
      ),
    );
  }
}
