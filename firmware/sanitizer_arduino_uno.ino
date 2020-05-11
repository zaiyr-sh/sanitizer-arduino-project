#include <Servo.h>
Servo servo;

int lightBulb = 2;
int out = 10;
int inp = 9;
int duration;
int index = 0;
int soundPin = 6;


void setup()
{
  Serial.begin(19200);
  servo.attach(13);
  
  pinMode(out, OUTPUT);
  pinMode(inp, INPUT);
  pinMode(lightBulb, OUTPUT);
}

void loop()
{
  digitalWrite(lightBulb, LOW);
  digitalWrite(out, HIGH);
  delayMicroseconds(10);
  digitalWrite(out, LOW);
  
  duration = pulseIn(inp, HIGH);
  Serial.println(duration);
  
  if(duration >= 200 && duration <= 5000){
  	digitalWrite(lightBulb, HIGH);
    
    tone(soundPin, 300);
    delay(300);
    noTone(soundPin);
    
    for(index; index <= 180; index++){
    	servo.write(index);
    }
  }
  
  for(index; index >= 0; index--){
    	servo.write(index);
    	delay(10);
   }
  
}