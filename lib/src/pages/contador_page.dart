import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _estiloTexto = new TextStyle(fontSize: 25.0);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de taps:', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 5.0),
        FloatingActionButton(
          onPressed: _reset,
          child: Icon(Icons.add),
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          onPressed: _sumar,
          child: Icon(Icons.add_a_photo),
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: _restar,
          child: Icon(Icons.accessibility),
        ),
        SizedBox(width: 5.0),
      ],
    );
  }

  void _sumar() => setState(() => _conteo++);
  void _restar() => setState(() => _conteo--);
  void _reset() => setState(() => _conteo = 0);
}
