// Example 03A
// ボタンから指を離したあとも点灯したままにする.
// stateの保持方法を改良
// デバウンシング対応のdelay(10)を追加

#define LED 13
#define BUTTON 7 //push button

int val = 0;
int old_val = 0;
int state = 0;

void setup() {
  pinMode (LED, OUTPUT);
  pinMode (BUTTON, INPUT);
}

void loop() {
  val = digitalRead(BUTTON);

  //変化があるかどうかチェック
  if ((val == HIGH) && (old_val == LOW)){
    state = 1 - state;
    delay(10);
  }
  old_val = val;

  if (state == 1){
    digitalWrite(LED, HIGH);
  }


  else {
    digitalWrite(LED, LOW);
  }
}

