/* Developed by Eng Mouaz M AlShahmeh */
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import '../doodle_dash.dart';

class ScoreDisplay extends StatelessWidget {
  const ScoreDisplay({super.key, required this.game, this.isLight = false});

  final Game game;
  final bool isLight;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: (game as DoodleDash).gameManager.score,
      builder: (context, value, child) {
        return Text('Score: $value',
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: Theme.of(context).backgroundColor));
      },
    );
  }
}
