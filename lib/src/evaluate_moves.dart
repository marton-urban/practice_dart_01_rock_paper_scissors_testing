import 'package:rock_paper_scissors_test/src/set_ai_move.dart';
import 'package:rock_paper_scissors_test/src/set_player_move.dart';

late String result;

void evaluateMoves() {
  if (playerMove == aiMove) {
    print("It's a draw");
    result = 'draw';
  } else if (playerMove == Move.rock && aiMove == Move.scissors ||
      playerMove == Move.paper && aiMove == Move.rock ||
      playerMove == Move.scissors && aiMove == Move.paper) {
    print("You win");
    result = 'win';
  } else {
    print("You lose");
    result = 'lose';
  }
}
