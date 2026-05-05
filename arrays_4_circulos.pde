int maxPuntos = 10;
float[] posX = new float[maxPuntos];
float[] posY = new float[maxPuntos];
int indiceActual = 0;
int totalPuntos = 0;

void setup() {
  size(800, 600);
}
void draw() {
  background(255);
  for (int i = 0; i < totalPuntos; i++) {
    fill(255, 150, 150);
    circle(posX[i], posY[i], 60);
  }
}
void mousePressed() {
  posX[indiceActual] = mouseX;
  posY[indiceActual] = mouseY;
  indiceActual = indiceActual + 1;
  if (indiceActual >= maxPuntos) {
    indiceActual = 0;
  }
  if (totalPuntos < maxPuntos) {
    totalPuntos++;
  }
}
