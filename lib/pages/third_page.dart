import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

const List<Color> greenGradients = [
  Color(0xFF7700FF),
  Color(0xFF8351D4),
  Color(0xFF764C8A),
]; //Fin const
const List<Color> lightGreenGradients = [
  Color(0xFF76FF03),
  Color(0xFF64FFDA),
  Color(0xFFB2FF59),
]; //Fin const
const List<Color> limeGradients = [
  Color(0xFF0F13F8),
  Color(0xFF5570C7),
  Color(0xFF5E8EF7),
]; //Fin const

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 300, minWidth: 200),
      child: SingleChildScrollView(
          child: Column(children: <Widget>[
        SizedBox(
          height: 20.0,
        ),

        Container(
            height: 100,
            width: 250,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              gradient: LinearGradient(colors: greenGradients),
            ), //ShapeDecoration
            child: Container(
              padding: EdgeInsets.only(top: 25.0, bottom: 16),
              child: Text('Productos del día', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold) //Fin TextStyle
                  ),
            ) //Fin Container
            ), //Fin Container2
              
        SizedBox(
          height: 20.0,
        ),
        Container(
          height: 100,
          width: 175,
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            gradient: LinearGradient(colors: limeGradients),
          ), //ShapeDecoration

          child: Text('Paquetes disponibles:', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold) //Fin TextStyle
              ),
        ), //Fin Container 3

              SizedBox(
          height: 20.0,
        ),
        Container(
          height: 100,
          width: 175,
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            gradient: LinearGradient(colors: lightGreenGradients),
          ), //ShapeDecoration

          child: Text('Paquete 1', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold) //Fin TextStyle
              ),
        ), //Fin Container 3
              
        SizedBox(
          height: 20.0,
        ),
        InkWell(
          onTap: () {
            print('Paquete 1');
          },
          child: Container(padding: EdgeInsets.all(5), child: Image.asset("assets/images/carro2.jpg")), //Fin Container 4
        ), //fin inkwell
              
              SizedBox(
          height: 20.0,
        ),
        Container(
          height: 100,
          width: 175,
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            gradient: LinearGradient(colors: lightGreenGradients),
          ), //ShapeDecoration

          child: Text('Paquete 2', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold) //Fin TextStyle
              ),
        ), //Fin Container 3
              
        SizedBox(
          height: 20.0,
        ),
        InkWell(
          onTap: () {
            print('Paquete 2');
          },
          child: Container(padding: EdgeInsets.all(5), child: Image.asset("assets/images/carro3.jpg")), //Fin Container 4
        ), //fin inkwell
              
              
      ] //Fin Widget[]

              ) //Fin Column
          ), //Fin SingleChildScrollView
    ) //Fin ConstrainedBox

        ); //Fin Material
  } // widget

} //Fin clase _ThirdPage