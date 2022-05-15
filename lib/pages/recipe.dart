import 'package:beerom/generated/l10n.dart';
import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {

  final String photo_path;
  // final int idx;

  const Recipe({Key? key, required this.photo_path/*, required this.idx*/})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            S.of(context).beerName
            // "Beer Name"
        ),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AspectRatio(
            aspectRatio: 600 / 400,
            child: Image.asset(
              photo_path,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
                S.of(context).beerName,
              // "Beer Name",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Text(
            "Ingredients, description and preparation steps are here!!",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}