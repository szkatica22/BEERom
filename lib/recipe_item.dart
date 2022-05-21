import 'package:beerom/generated/l10n.dart';
import 'package:beerom/pages/recipe.dart';
import 'package:flutter/material.dart';

class RecipeItem extends StatefulWidget {

  final int idx;

  const RecipeItem({Key? key, required this.idx}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RecipeItemState();
}

class _RecipeItemState extends State<RecipeItem> {

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      color: Colors.orange[200],

      child: ListTile(
        title: Text("List Item ${widget.idx}"),
        subtitle: Text(
          "${S.of(context).beerTagline} : Something",
          maxLines: 1,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Recipe(
                photo_path: "assets/images/beer_2.png",
              ),
            ),
          );
        },
      ),
    );
  }
}

class AnimatedRotation extends ImplicitlyAnimatedWidget {
  final double angle;
  final Widget child;

  const AnimatedRotation({
    required this.angle,
    required this.child,
    required Duration duration,
    required Curve curve,
    Key? key,
  }) : super(key: key, duration: duration, curve: curve);

  @override
  _AnimatedRotationState createState() => _AnimatedRotationState();
}

class _AnimatedRotationState extends AnimatedWidgetBaseState<AnimatedRotation> {
  late Tween<double> _angleTween;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _angleTween.evaluate(animation),
      child: widget.child,
    );
  }

  @override
  void forEachTween(visitor) {
    _angleTween = visitor(
      _angleTween,
      widget.angle,
          (dynamic value) => Tween<double>(begin: value),
    ) as Tween<double>;
  }
}