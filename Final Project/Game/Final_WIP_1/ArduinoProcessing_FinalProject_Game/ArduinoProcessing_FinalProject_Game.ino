const int LED1=2;
const int LED2=3;
const int LED3=4;
const int LED4=5;

const int pot=A0;
const int photo=A1;
int val=0;

void setup() {
  pinMode(pot, INPUT);
  pinMode(photo, INPUT);
  
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  val=analogRead(pot);
  val=val/4;
  delay(100);

  Serial.write(val);

}
