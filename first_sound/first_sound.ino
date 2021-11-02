int button = 2;
byte arbitraryCode = 97;

void setup()
{
  Serial.begin(9600);
}

void loop()
{
  if (!digitalRead(button))
  {
    Serial.write(arbitraryCode);
    Serial.print("xx");
    delay(100);
  }
}
