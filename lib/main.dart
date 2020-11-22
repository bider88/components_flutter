import 'package:flutter/material.dart';

// import 'package:components_flutter/src/pages/home_temp.dart';
import 'package:components_flutter/src/pages/alert_page.dart';
import 'package:components_flutter/src/routes/routes.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      // home: HomeTempPage(),
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(), // sistema de rutas
      onGenerateRoute: (RouteSettings settings) { // ruta por defecto si no se encuentra en nuestras rutas definidas
        print('route called ${settings.name}');
        return MaterialPageRoute(builder: (context) => AlertPage());
      },
    );
  }
}