import 'dart:io';

enum Move { rock, paper, scissors, invalid }
late Move playerMove;

void setPlayerMove(String? input) {
  switch (input) {
    case 'r':
      playerMove = Move.rock;
      break;
    case 'p':
      playerMove = Move.paper;
      break;
    case 's':
      playerMove = Move.scissors;
      break;
    case 'q':
      exit(0);
    default:
      playerMove = Move.invalid;
      break;
  }
  if (playerMove != Move.invalid) {
    print('You played: $playerMove');
  }
}
