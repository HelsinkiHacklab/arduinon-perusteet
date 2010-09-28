/*

Author: Taneli Kaivola / Hacklab Ry

*/

#define LED_R 11
#define LED_G 10
#define LED_B 9

unsigned char R, G, B;

void setup() {
  pinMode(LED_R, OUTPUT);
  pinMode(LED_G, OUTPUT);
  pinMode(LED_B, OUTPUT);
  
  R = G = B = 255; // Aluksi maksimissa eli himmeä.
}

void RGB(unsigned char r, unsigned char g, unsigned char b) {
  analogWrite(LED_R, r);
  analogWrite(LED_G, g);
  analogWrite(LED_B, b);
}

void loop() {
  RGB(R, G, B);
  
  R -= 2;
  G -= 3;
  B -= 5;

  delay(50);
}



