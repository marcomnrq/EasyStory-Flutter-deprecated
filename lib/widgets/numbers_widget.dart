import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  //Construcción de la ventana
  @override
  Widget build(BuildContext context) => IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildButton(context, '4.8', 'Ranking'),
            buildDivider(),
            buildButton(context, '35', 'Siguiendo'),
            buildDivider(),
            buildButton(context, '50', 'Seguidores'),
          ],
        ),
      );

  Widget buildDivider() => Container(height: 24, child: VerticalDivider());

// Construcción de cada boton
  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
          padding: EdgeInsets.symmetric(vertical: 4),
          onPressed: () {},
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(value,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                SizedBox(height: 2),
                Text(text,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
              ]));
}
