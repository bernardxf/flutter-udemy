import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListData extends StatelessWidget {

  final String title;
  final String subtitle;
  final ImageProvider image;
  final EdgeInsets margin;

  const ListData({this.title, this.subtitle, this.image, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey[300], width: 1.0),
          bottom: BorderSide(color: Colors.grey[300], width: 1.0),
        )
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: image)
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(height: 5),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w300
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}