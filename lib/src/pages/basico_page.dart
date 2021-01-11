import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 13.0, color: Colors.blueGrey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      _crearImagen(),
      _crearRow1(),
      _crearRow2(),
      _crearTexto(),
      _crearTexto(),
      _crearTexto(),
      _crearTexto(),
    ])));
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://static.educalingo.com/img/en/800/landscape.jpg'),
    );
  }

  Widget _crearRow1() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Paisaje affafaffaaf',
                  style: estiloTitulo,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Bonitofa faffa',
                  style: estiloSubtitulo,
                )
              ]),
            ),
            Icon(
              Icons.star,
              color: Colors.red[700],
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearRow2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'Share')
      ],
    );
  }

  Widget _accion(IconData icon, String txt) {
    return Column(children: [
      Icon(
        icon,
        color: Colors.cyanAccent[700],
        size: 30.0,
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        txt,
        style: TextStyle(fontSize: 13.0, color: Colors.blue),
      )
    ]);
  }

  Widget _crearTexto() {
    return SafeArea(
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Text(
            'faf a afaga agagaga aagagaga a gaga agagag agaga agagagagagagagagaga agagaga agagag agagagagjnjka  nabjgbhj aj  ghjag ajajfbajba fjhakjbakj agbjkfakjb agkjahbkj alghjagnagjnakgb agbakgbjfkmdjah bf fafjjkb  nabfba  a,',
            textAlign: TextAlign.justify,
          )),
    );
  }
}
