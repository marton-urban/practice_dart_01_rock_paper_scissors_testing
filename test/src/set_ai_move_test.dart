import 'package:rock_paper_scissors_test/play_rps.dart';
import 'package:test/test.dart';

void main() {
  int counter = 0;
  setUp(() {
    counter = 0;
  });
  group('Assign aiMove correctly', () {
    test('After n tries, aiMove = Move.rock\n', () {
      do {
        setAiMove();
        counter++;
      } while (aiMove != Move.rock);
      print('\nGenerated rock in $counter tries.');
      expect(aiMove, Move.rock);
    });
    test('After n tries, aiMove = Move.paper\n', () {
      do {
        setAiMove();
        counter++;
      } while (aiMove != Move.paper);
      print('\nGenerated paper in $counter tries.');
      expect(aiMove, Move.paper);
    });
    test('After n tries, aiMove = Move.scissors\n', () {
      do {
        setAiMove();
        counter++;
      } while (aiMove != Move.scissors);
      print('\nGenerated scissors in $counter tries.');
      expect(aiMove, Move.scissors);
    });
  });
}
