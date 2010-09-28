#define LED_R 11
#define LED_G 10
#define LED_B 9

void setup() {
  pinMode(LED_R, OUTPUT);
  pinMode(LED_G, OUTPUT);
  pinMode(LED_B, OUTPUT);
}

void RGB(unsigned char r, unsigned char g, unsigned char b) {
  analogWrite(LED_R, r);
  analogWrite(LED_G, g);
  analogWrite(LED_B, b);
}

void loop() {
  unsigned char ON  = 0;
  unsigned char OFF = 255;
  
  RGB(ON, OFF, OFF); // Punainen
  delay(500);

  RGB(OFF, OFF, ON); // Sininen
  delay(500);
}



