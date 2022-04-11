const int buttonPin=2;

const int LED1=3;
const int LED2=4;
const int LED3=5;
const int LED4=6;
const int LED5=7;
const int LED6=8;

int buttonState=0;

void setup() {
  pinMode(LED1, OUTPUT);
  pinMode(buttonPin, INPUT);
  pinMode(LED2, OUTPUT);
  pinMode(buttonPin, INPUT);
  pinMode(LED3, OUTPUT);
  pinMode(buttonPin, INPUT);
  pinMode(LED4, OUTPUT);
  pinMode(buttonPin, INPUT);
  pinMode(LED5, OUTPUT);
  pinMode(buttonPin, INPUT);
  pinMode(LED6, OUTPUT);
  pinMode(buttonPin, INPUT);
}

void loop() {
  buttonState=digitalRead(buttonPin);
  delay(10);
  
  if (buttonState==HIGH) {
    //m
    longBeep();
    delay(250);
    longBeep();
    delay(750);
    //t
    longBeep();
    delay(750);
    //e
    shortBeep();
    delay(750);
    //c
    shortBeep();
    delay(250);
    longBeep();
    delay(500);
    shortBeep();
    delay(250);
    longBeep();
    delay(1250);
    //22
    shortBeep();
    delay(250);
    shortBeep();
    delay(500);
    longBeep();
    delay(500);
    longBeep();
    delay(500);
    longBeep();
    delay(750);
    shortBeep();
    delay(250);
    shortBeep();
    delay(500);
    longBeep();
    delay(500);
    longBeep();
    delay(500);
    longBeep();
    delay(1000);
    //8
    longBeep();
    delay(500);
    longBeep();
    delay(500);
    longBeep();
    delay(500);
    shortBeep();
    delay(250);
    shortBeep();
    delay(1000);
    //0
    longBeep();
    delay(500);
    longBeep();
    delay(500);
    longBeep();
    delay(500);
    longBeep();
    delay(500);
    longBeep();
    delay(5000);
  } else {
    digitalWrite(LED1, LOW);
    digitalWrite(LED2, LOW);
    digitalWrite(LED3, LOW);
    digitalWrite(LED4, LOW);
    digitalWrite(LED5, LOW);
    digitalWrite(LED6, LOW);
  }
}

void shortBeep() {
  digitalWrite(LED1, HIGH);
  digitalWrite(LED2, HIGH);
  digitalWrite(LED3, HIGH);
  digitalWrite(LED4, HIGH);
  digitalWrite(LED5, HIGH);
  digitalWrite(LED6, HIGH);
  delay(75);
  digitalWrite(LED1, LOW);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);
  digitalWrite(LED4, LOW);
  digitalWrite(LED5, LOW);
  digitalWrite(LED6, LOW);
}

void longBeep() {
  digitalWrite(LED1, HIGH);
  digitalWrite(LED2, HIGH);
  digitalWrite(LED3, HIGH);
  digitalWrite(LED4, HIGH);
  digitalWrite(LED5, HIGH);
  digitalWrite(LED6, HIGH);
  delay(250);
  digitalWrite(LED1, LOW);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);
  digitalWrite(LED4, LOW);
  digitalWrite(LED5, LOW);
  digitalWrite(LED6, LOW);
}
