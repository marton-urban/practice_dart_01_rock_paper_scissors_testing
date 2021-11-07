import 'package:rock_paper_scissors_test/play_rps.dart';
import 'package:test/test.dart';

void main() {
  group('Evaluate all permutations', () {
    group('Draw', () {
      test('rock vs rock -> result = "draw"', () {
        playerMove = Move.rock;
        aiMove = Move.rock;
        evaluateMoves();
        expect(result, "draw");
      });
      test('paper vs paper -> result = "draw"', () {
        playerMove = Move.paper;
        aiMove = Move.paper;
        evaluateMoves();
        expect(result, "draw");
      });
      test('scissors vs scissors -> result = "draw"', () {
        playerMove = Move.scissors;
        aiMove = Move.scissors;
        evaluateMoves();
        expect(result, "draw");
      });
    });
    group('Win', () {
      test('rock vs scissors -> result = "win"', () {
        playerMove = Move.rock;
        aiMove = Move.scissors;
        evaluateMoves();
        expect(result, "win");
      });
      test('paper vs rock -> result = "win"', () {
        playerMove = Move.paper;
        aiMove = Move.rock;
        evaluateMoves();
        expect(result, "win");
      });
      test('scissors vs paper -> result = "win"', () {
        playerMove = Move.scissors;
        aiMove = Move.paper;
        evaluateMoves();
        expect(result, "win");
      });
    });
    group('Lose', () {
      test('rock vs paper -> result = "lose"', () {
        playerMove = Move.rock;
        aiMove = Move.paper;
        evaluateMoves();
        expect(result, "lose");
      });
      test('paper vs scissors -> result = "lose"', () {
        playerMove = Move.paper;
        aiMove = Move.scissors;
        evaluateMoves();
        expect(result, "lose");
      });
      test('scissors vs rock -> result = "lose"', () {
        playerMove = Move.scissors;
        aiMove = Move.rock;
        evaluateMoves();
        expect(result, "lose");
      });
    });
  });
}
