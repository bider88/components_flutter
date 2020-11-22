import 'package:flutter/material.dart';

import 'package:components_flutter/src/providers/menu_provider.dart';
import 'package:components_flutter/src/utils/icon_string_util.dart';

import 'package:components_flutter/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes')),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _createItems(snapshot.data, context));
      }
    );
  }

  List<Widget>_createItems(List<dynamic> options, BuildContext context) {

    return options.map((option) => Column(
      children: [
        ListTile(
          title: Text(option['texto']),
          leading: getIcon(option['icon']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (ontext) => AlertPage()
            // );
            // Navigator.push(context, route);
            Navigator.pushNamed(context, option['ruta']);
          },
        ),
        Divider()
      ],
    )).toList();
  }
}