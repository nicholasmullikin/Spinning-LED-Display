PImage Kirby;



void setup() {
  Kirby = loadImage("data/Untitled.png");
  for (int j = 0; j<width; j++) { 
    for (int i = 0; i<21; i++) {
      if(red(Kirby.get(j, i)) == 0 && green(Kirby.get(j, i))== 0 && blue(Kirby.get(j, i))== 0){
         println("strip.setPixelColor("+i+", black);");
      }
      else if(red(Kirby.get(j, i)) == 255 && green(Kirby.get(j, i))== 255 && blue(Kirby.get(j, i))== 255){
         println("strip.setPixelColor("+i+", white);");
      }
      else{
      println("strip.setPixelColor("+i+", strip.Color("+red(Kirby.get(j, i))+", "+green(Kirby.get(j, i))+", "+blue(Kirby.get(j, i))+"));");
    }
    }
    println("strip.show();");
          println("delay(0.5);");

  }
  //for (int i =0; i<21; i++){
  //println("strip.setPixelColor("+i+",strip.Color(0,0,0));");
  //}
  println("delay(32);");
  exit();
}

void draw() {
  
}
public static boolean same(int[] array) {
    if (array.length == 0) {
        return true;
    } else {
        int first = array[0];
        for (int element : array) {
            if (element != first) {
                return false;
            }
        }
        return true;
    }
}