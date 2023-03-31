import 'dart:io';

import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
 final rng = Random();
 while (true) {
  stdout.write('Rock, Paper or Scissor? (r/p/s) ');
  final input = stdin.readLineSync() ;
  if (input == 'r' || input =='p' || input == 's') {
    var playerMove;
    if (input =='r') {
      playerMove = Move.rock ;
    }
    else if (input == 'p') {
      playerMove = Move.paper;
    }
    else {
      playerMove = Move.scissors ;
    }
    final random = rng.nextInt(3);
    final aiMove = Move.values[random];
    print ('Your Move: $playerMove');
    print ('AI Move: $aiMove');
    if (playerMove == aiMove) {
      print ("It's a draw");
    }
    else if (playerMove == Move.rock && aiMove == Move.scissors) {
      print('You win');
    }
    else if (playerMove == Move.rock && aiMove == Move.paper) {
      print ('You lose');
    }
    else if (playerMove == Move.paper && aiMove == Move.rock) {
      print ('You win');
    }
    else if (playerMove == Move.paper && aiMove == Move.scissors) {
      print ('You lose');
    }
    else if (playerMove == Move.scissors && aiMove == Move.rock) {
      print ('You lose');
    }
    else {
      print ('You win');
    }
  }
  else if (input == 'q') {
    break ;
  }
  else {
    print('Invalid Input');
  }
 }
}