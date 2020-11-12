import 'package:flutter/material.dart';

class HomeTempPage extends StatelessWidget {

  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // children: _creatListTiles(),
        children: _creatListTilesShort(),
      ),
    );
  }

  // List<Widget> _creatListTiles() {
  //   List<Widget> list = new List<Widget>();
  //   for (var opt in options) {
  //     list
  //       ..add(ListTile(title: Text(opt)))
  //       ..add(Divider());
  //   }
  //   return list;
  // }
  
  List<Widget> _creatListTilesShort() {
    return options.map((option) => Column(
      children: [
        ListTile(
          title: Text(option + '!'),
          subtitle: Text('subtitle'),
          leading: Icon(Icons.supervised_user_circle),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () => {},
        ),
        Divider()
      ],
    )).toList();
  }
}