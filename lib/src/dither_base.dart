import 'package:image/image.dart';

int ditherColor(int color, double error) {
  var e = error.floor();
  var r = getRed(color) + e;
  var g = getGreen(color) + e;
  var b = getBlue(color) + e;
  return getColor(r, g, b);
}

int quantise(int pixel,
    {int errR = 0, int errG = 0, int errB = 0, int err = 0}) {
  var oldR = getRed(pixel);
  var oldG = getGreen(pixel);
  var oldB = getBlue(pixel);

  var newR = oldR + (errR * err / 16).round();
  var newG = oldG + (errG * err / 16).round();
  var newB = oldB + (errB * err / 16).round();
  return getColor(newR, newG, newB);
}
