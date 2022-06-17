// AntV可视化组件（https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/color-rose.html#）
// Dart JS文档（https://api.dart.cn/stable/2.16.2/dart-js/dart-js-library.html）

// import 'dart:html';
import 'dart:js';

//https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/rose-ranged.html 用的图像连接
void main(List<String> args) {
  // DivElement dartStatus = querySelector('#dart-status') as DivElement;
  // dartStatus.text = 'Dart is running!';

  var myData = JsObject.jsify([
    //修改图像的内容
    {'type': '吃饭', 'value': 1},
    {'type': '睡觉', 'value': 2},
    {'type': '打豆豆', 'value': 3},
    {'type': '看电影', 'value': 4},
    {'type': '听音乐', 'value': 5},
    {'type': '玩游戏', 'value': 6},
    {'type': '看书', 'value': 7},
    {'type': '看书', 'value': 8}
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}
