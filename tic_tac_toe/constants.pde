void keyPressed() {
  if (key >= '0' && key <= '8') {
    int cell = key - '0';
    if (board[cell] == -1) {
      board[cell] = currentPlayer;
      currentPlayer = 1 - currentPlayer; // Switch player turn
    }
  }
}

void checkWinner() {
  for (int i = 0; i < 3; i++) {
    if (board[i * 3] != -1 && board[i * 3] == board[i * 3 + 1] && board[i * 3] == board[i * 3 + 2]) {
      announceWinner(board[i * 3]);
      return;
    }
    if (board[i] != -1 && board[i] == board[i + 3] && board[i] == board[i + 6]) {
      announceWinner(board[i]);
      return;
    }
  }
  if (board[0] != -1 && board[0] == board[4] && board[0] == board[8]) {
    announceWinner(board[0]);
    return;
  }
  if (board[2] != -1 && board[2] == board[4] && board[2] == board[6]) {
    announceWinner(board[2]);
    return;
  }
}

void announceWinner(int player) {
  background(255);
  drawBoard();
  textAlign(CENTER, CENTER);
  textSize(32);
  fill(0);
  if (player == 0) {
    text("Player wins!", width / 2, height / 2);
  } else {
    text("Computer wins!", width / 2, height / 2);
  }
  noLoop();
}
