void divide(int astronauts) {
  if (astronauts == 0) {
    throw Exception('No astronauts.');
  }
}

void main() {
  try {
    divide(0);
  } catch (e) {
    print(e);
  }
}
