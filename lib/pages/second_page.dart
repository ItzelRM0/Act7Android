import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuentas'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.greenAccent,
                Colors.greenAccent,
                Colors.greenAccent
              ],
            ),
          ),
        ),
      ), //AppBar
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[
              _crearCard1(),
              SizedBox(
                height: 10,
              ),
              _crearInput1(),
              SizedBox(
                height: 10,
              ),
              _crearInput2(),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {},
                color: Colors.greenAccent,
                child: Text(
                  'Enviar',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearInput1() {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'Email',
            icon: Icon(
              Icons.email,
              color: Colors.greenAccent,
            ),
            hintText: 'Email'),
      ),
    );
  }

  Widget _crearInput2() {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
            labelText: 'Password',
            icon: Icon(
              Icons.https,
              color: Colors.greenAccent,
            ),
            hintText: 'Password'),
      ),
    );
  }

  Widget _crearCard1() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              child: FadeInImage(
                placeholder: AssetImage('assets/inicio.gif'),
                image: NetworkImage("https://raw.githubusercontent.com/ItzelRM0/MisImagenes7/main/inicio.gif"),
              ),
            ),
          ],
        ),
      ),
    );
  }
} // Second page