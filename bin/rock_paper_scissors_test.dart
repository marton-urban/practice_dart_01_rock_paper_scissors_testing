import 'dart:io';
import 'package:rock_paper_scissors_test/play_rps.dart';

void main() {
  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s) ');
    final input = stdin.readLineSync();
    setPlayerMove(input);

    if (playerMove != Move.invalid) {
      setAiMove();
      evaluateMoves();
    } else {
      print('Invalid move');
    }
  }
}
