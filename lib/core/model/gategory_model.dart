import 'dart:ui';

class JJCategoryModel {
  String id;
  String title;
  String color;
  Color cColor;

  JJCategoryModel({this.id, this.title, this.color});

  JJCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];
    //转换颜色 专为16进制
   final colorInt = int.parse(color, radix: 16);
   cColor = Color(colorInt | 0xFF000000);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['color'] = this.color;
    return data;
  }
}