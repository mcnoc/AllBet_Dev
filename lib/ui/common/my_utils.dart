import 'dart:math';

class MyUtils {
  MyUtils._();

  ///Returns random image url
  static String getTempLink({int height = 812, int width = 375}) {
    Random rand = Random();
    int value = rand.nextInt(height);
    return 'https://picsum.photos/$width/$height?test=$value';
  }
}
