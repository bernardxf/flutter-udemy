import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  final List<String> categories = [
    'Trabalho',
    'Estudos',
    'Casa',
    'Treino',
  ];

  int _category = 0;

  void selectBackward() {
    setState(() {
      _category--;
    });
  }

  void selectForward() {
    setState(() {
      _category++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: _category > 0 ? selectBackward : null,
          disabledColor: Colors.white30,
        ),
        Text(
          categories[_category].toUpperCase(),
          style: TextStyle(
            fontSize: 18,
            letterSpacing: 1.2,
            fontWeight: FontWeight.w300,
            color: Colors.white
          )
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          color: Colors.white,
          onPressed: _category < categories.length - 1 ? selectForward : null,
          disabledColor: Colors.white30,
        ),
      ],
    );
  }

}