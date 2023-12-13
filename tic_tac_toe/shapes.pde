void drawX(float x, float y, float w, float h) {
  line(x, y, x + w, y + h);
  line(x, y + h, x + w, y);
}

void drawO(float x, float y, float w, float h) {
  ellipse(x + w / 2, y + h / 2, w, h);
}
