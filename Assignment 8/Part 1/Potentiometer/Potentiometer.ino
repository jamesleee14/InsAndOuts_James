const int LED=11;
const int pot=A0;
int reading=0;

void setup() {
  pinMode(LED, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  reading=analogRead(pot);
  delay(10);
  Serial.println(reading);
  analogWrite(LED, reading/4);
}
