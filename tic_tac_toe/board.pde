void drawBoard() {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      int index = i * 3 + j;
      float x = j * width / 3;
      float y = i * height / 3;
      rect(x, y, width / 3, height / 3);
      if (board[index] == 0) {
        drawX(x + width / 12, y + height / 12, width / 6, height / 6);
      } else if (board[index] == 1) {
        drawO(x + width / 12, y + height / 12, width / 6, height / 6);
      }
    }
  }
}
