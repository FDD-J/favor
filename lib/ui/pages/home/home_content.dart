import 'package:favor/core/model/gategory_model.dart';
import 'package:favor/core/services/json_parse.dart';
import 'package:flutter/material.dart';
import 'package:favor/extension/int_extension.dart';

class JJHomeContent extends StatefulWidget {
  @override
  _JJHomeContentState createState() => _JJHomeContentState();
}

class _JJHomeContentState extends State<JJHomeContent> {
  List<JJCategoryModel> _categoryDatas = [];
  @override
  void initState() {
     super.initState();

    // TODO: 加载数据
    JsonParse.getCategaryData().then((res){
      setState(() {
        _categoryDatas = res;
        print(res);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(20.px),
      itemCount: _categoryDatas.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20.px,
        mainAxisSpacing: 20.px,
        childAspectRatio: 1.5,
      ),
      itemBuilder: (ctx, index){
        final bgC = _categoryDatas[index].cColor;
        return Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(//设置渐变色
              colors: [
                bgC.withOpacity(.5),
                bgC
              ]
            )
          ),
          alignment: Alignment.center,
          child: Text(
           _categoryDatas[index].title,
           style: Theme.of(context).textTheme.display2.copyWith(fontWeight:FontWeight.bold)),
        );
      },
    );
  }
}