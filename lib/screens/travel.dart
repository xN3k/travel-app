import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/provider/button_provider.dart';

class TravelScreen extends StatefulWidget {
  const TravelScreen({super.key});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<ButtonProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Mikasa',
                  ),
                ),
                Text('Location'),
              ],
            ),
          ),
          // FavoriteIcon(),
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
      ),
    );
  }
}
