byte val;
const int LED=2;

void setup() {
  pinMode(LED, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  if (Serial.available()) {
    val=Serial.read();
  }
  
  if (val==0) {
    pinMode(LED, HIGH);
  } else {
    pinMode(LED, LOW);
  }
}
