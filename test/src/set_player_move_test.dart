import 'package:rock_paper_scissors_test/play_rps.dart';
import 'package:test/test.dart';
import 'package:random_string/random_string.dart';

void main() {
  const inputR = 'r';
  const inputP = 'p';
  const inputS = 's';
  const inputDefaultNone = '';
  final inputDefaultRandom = randomAlphaNotRPSQ;

  group('Assign player move correctly', () {
    group('Move is valid', () {
      test('After input of "r", playerMove = Move.rock', () {
        setPlayerMove(inputR);
        expect(playerMove, Move.rock);
      });
      test('After input of "p", playerMove = Move.paper', () {
        setPlayerMove(inputP);
        expect(playerMove, Move.paper);
      });
      test('After input of "s", playerMove = Move.scissors', () {
        setPlayerMove(inputS);
        expect(playerMove, Move.scissors);
      });
    });

    group('Move is invalid', () {
      test('After input of "", playerMove = Move.invalid', () {
        setPlayerMove(inputDefaultNone);
        expect(playerMove, Move.invalid);
      });
      test('After input of random character, playerMove = Move.invalid', () {
        setPlayerMove(inputDefaultRandom);
        expect(playerMove, Move.invalid);
      });
    });
  });
}

String get randomAlphaNotRPSQ {
  String myChar;
  do {
    myChar = randomAlpha(1);
  } while (myChar == 'r' || myChar == 'p' || myChar == 's' || myChar == 'q');
  return myChar;
}
