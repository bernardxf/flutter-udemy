import 'package:animations/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;

  const AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: 'Estudar Fullter',
          subtitle: 'Terminar o app o quanto antes!',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 5,
        ),
        ListData(
          title: 'Estudar Fullter2',
          subtitle: 'Terminar o app o quanto antes!',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 4,
        ),
        ListData(
          title: 'Estudar Fullter3',
          subtitle: 'Terminar o app o quanto antes!',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: 'Estudar Fullter4',
          subtitle: 'Terminar o app o quanto antes!',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: 'Estudar Fullter5',
          subtitle: 'Terminar o app o quanto antes!',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: 'Estudar Fullter6',
          subtitle: 'Terminar o app o quanto antes!',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }

}