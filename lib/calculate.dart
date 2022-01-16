String cal(var ll, var gg) {
  var isCorrect = false;
  var text = "";
  var weight = 0.0;
    var l = ll;
    var g = gg;
    var length = double.tryParse(l!);
    var girth = double.tryParse(g!);
    if (length == null && girth == null) {
      text = 'กรอกข้อมูลไม่ถูกต้อง ให้กรอกเฉพาะตัวเลขเท่านั้น';
      return text;
    }else {
       weight = girth! * girth! * length! * 69.3!;
    }
  text = '$weight นนหมู';

  return text;
}