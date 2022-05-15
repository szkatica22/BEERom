import 'dart:html';
import 'dart:ui';

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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

            // Tagline
            Container(
              color: Colors.amber[100],
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              padding: const EdgeInsets.all(6),
              child: Text(
                "${S.of(context).beerTagline}: ",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              padding: const EdgeInsets.all(6),
              child: Text(
                "TODO tagline",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14
                ),
              ),
            ),

            // First Brewed
            Container(
              color: Colors.amber[100],
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              padding: const EdgeInsets.all(6),
              child: Text(
                "${S.of(context).beerFirstBrewed}: ",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              padding: const EdgeInsets.all(6),
              child: Text(
                "TODO firstbrewed",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14
                ),
              ),
            ),

            //Description
            Container(
              color: Colors.amber[100],
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              padding: const EdgeInsets.all(6),
              child: Text(
                "${S.of(context).beerDescription}: ",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              child: Text(
                "TODO description",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14
                ),
              ),
            ),

            // Volume
            Container(
              color: Colors.amber[100],
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              padding: const EdgeInsets.all(6),
              child: Text(
                "${S.of(context).beerVolume}: ",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              child: Text(
                "TODO volume",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14
                ),
              ),
            ),

            // Boil volume
            Container(
              color: Colors.amber[100],
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              padding: const EdgeInsets.all(6),
              child: Text(
                "${S.of(context).beerBoilVolume}: ",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              child: Text(
                "TODO boilvolume",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14
                ),
              ),
            ),

            // Method
            Container(
              color: Colors.amber[100],
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              padding: const EdgeInsets.all(6),
              child: Text(
                "${S.of(context).beerMethod}: ",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              child: Text(
                "TODO method", // TODO: Ide majd meg tobb minden kell - mash, fregmentation, twist
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14
                ),
              ),
            ),

            // Ingredients
            Container(
              color: Colors.amber[100],
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              padding: const EdgeInsets.all(6),
              child: Text(
                "${S.of(context).beerIngredients}: ",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              child: Text(
                "TODO ingredients",  // TODO: ide majd meg tobb minden kell - a lista a hozzavalokrol stb.
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14
                ),
              ),
            ),

            // Food pairing
            // TODO: Lista elemein vegig kell menni azokat kiirni ala felsorolasba vagy nemtom
            Container(
              color: Colors.amber[100],
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              padding: const EdgeInsets.all(6),
              child: Text(
                "${S.of(context).beerFood}: ",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              child: Text(
                "TODO foodpairing",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14
                ),
              ),
            ),

            // Brewers Tips
            Container(
              color: Colors.amber[100],
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              padding: const EdgeInsets.all(6),
              child: Text(
                "${S.of(context).beerBrewersTips}: ",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              child: Text(
                "TODO brewerstips",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14
                ),
              ),
            ),

            // Contributed by
            Container(
              color: Colors.amber[100],
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              padding: const EdgeInsets.all(6),
              child: Text(
                "${S.of(context).BeerContributor}: ",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: new EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              child: Text(
                "TODO contributor",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14
                ),
              ),
            ),

          ],
        ),
      )
    );
  }
}