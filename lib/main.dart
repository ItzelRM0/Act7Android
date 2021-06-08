import 'package:flutter/material.dart';
import 'package:itzel/pages/first_page.dart';
import 'package:itzel/pages/second_page.dart';
import 'package:itzel/pages/third_page.dart';

void main() => runApp(itzelApp());

class itzelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto hamburguesa itzel',
      debugShowCheckedModeBanner: false,
      home: PaginaInicio(),
    );
  }
} // Fin clase itzelapp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} //Fin clase con Pagina inicio con estado

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //declara variable size
    Widget child; //widget creado por el usuario
    switch (_index) {
      case 0:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new FirstPage());
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
    } //Fin de switch selecciona paginas

    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.greenAccent, size: 30.0), //icon
            title: Text('Menu')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.format_align_center, color: Colors.black, size: 30.0), //icon
            title: Text('Registrarse')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.redAccent, size: 30.0), //icon
            title: Text('Compras')), //
      ]), // bottom
    ); //Fin scaffold
  } //Fin widget build
} //Fin de clase _PaginaInicioState