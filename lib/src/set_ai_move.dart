import 'dart:math';

import 'package:rock_paper_scissors_test/src/set_player_move.dart';

final rng = Random();
late Move aiMove;

void setAiMove() {
  final random = rng.nextInt(3);
  aiMove = Move.values[random];
  print('AI played: $aiMove');
}
