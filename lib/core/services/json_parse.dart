
import 'dart:convert';

import 'package:favor/core/model/gategory_model.dart';
import 'package:flutter/services.dart';

class JsonParse {
  static Future<List<JJCategoryModel>> getCategaryData() async {

    final jsonString = await rootBundle.loadString("assets/json/category.json");
    final result = json.decode(jsonString);
    final resultList = result["category"];
    List<JJCategoryModel> categories = [];
    for (var json in resultList) {
      categories.add(JJCategoryModel.fromJson(json));
    }
    return categories;
  }


}