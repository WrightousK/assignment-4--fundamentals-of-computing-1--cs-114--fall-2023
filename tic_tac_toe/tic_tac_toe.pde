int[] board = {-1, -1, -1, -1, -1, -1, -1, -1, -1}; // -1 represents an empty cell
int currentPlayer = 0; // 0 for player, 1 for computer

void setup() {
  size(500, 500);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(255);
  drawBoard();
  checkWinner();
}
