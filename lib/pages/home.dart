import 'dart:math';

import 'package:beerom/generated/l10n.dart';
import 'package:flutter/material.dart';
import '../recipe_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var starterIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {
            starterIdx = Random().nextInt(300);
          });
        },
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 250,
              backgroundColor: Colors.orange,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/beer_2.png',
                  fit: BoxFit.cover,
                ),
                title: Text(
                  S.of(context).pageTitle
                  // "Beer Recipes",
                ),
              ),
            ),
            SliverAppBar(
              pinned: true,
              excludeHeaderSemantics: false,
              backgroundColor: Colors.orange,
              title: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(5.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    labelText: S.of(context).searchBeerRecipes, //"Search beer recipes",
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    filled: true,
                    fillColor: Colors.orange[200],
                  ),
                  onChanged: (text){
                    // TODO!!!
                    // context.read<SearchBloc>().add(SearchUpdateNameEvent(text));
                  },
                ),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 100,
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int idx) {
                  return RecipeItem(
                    idx: idx,
                  );
                  // return Card(
                  //   margin: const EdgeInsets.all(8),
                  //   color: Colors.orange[200],
                  //   child: Row(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: <Widget>[
                  //       Center(
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(2),
                  //           child: Image(
                  //             image: NetworkImage(
                  //                 'https://picsum.photos/250?image=9',
                  //                 scale: 3
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Expanded(
                  //         child: Padding(
                  //           padding: const EdgeInsets.only(
                  //               left: 10, right: 10, bottom: 10, top: 10),
                  //           child: Center(
                  //             child: Text(
                  //               "List Item $idx",
                  //               style: Theme.of(context).textTheme.headlineSmall,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}