import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/provider/button_provider.dart';

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({super.key});

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<ButtonProvider>(context);
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          padding: const EdgeInsets.all(0),
          onPressed: favoriteProvider.favoriteButton,
          icon: favoriteProvider.isFavorite
              ? const Icon(Icons.favorite_border)
              : const Icon(Icons.favorite),
          color: Colors.red[500],
          // alignment: Alignment.center,
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('${favoriteProvider.favoriteCount}'),
          ),
        ),
      ],
    );
  }
}
