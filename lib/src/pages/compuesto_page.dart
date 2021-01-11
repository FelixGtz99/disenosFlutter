import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
class CompuestoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          _fondoApp(),
          SingleChildScrollView(
            child:Column(
              children:[
                _titulos(),
                _botonesRedondeados()
              ]
            ) ,)
        ]
      ),
      bottomNavigationBar: _navigationbar(context),
    );
  }
  Widget _navigationbar(BuildContext context){
    return Theme(
           data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(55, 57, 84, 1),
            primaryColor: Colors.pinkAccent,
            textTheme: Theme.of(context).textTheme.copyWith(caption:TextStyle(color: Color.fromRGBO(116, 117, 152,1)))
           ),
          child: BottomNavigationBar(
        
        items: [
         _barItem(Icons.calendar_today, ''),
         
          _barItem(Icons.bubble_chart,''),
          _barItem(Icons.supervised_user_circle, '')
        ],),
    );
  }
  BottomNavigationBarItem _barItem (IconData icon, String txt){
    return  BottomNavigationBarItem(
       
          label: txt,
          icon:Icon(icon, size: 30.0,)
          );

  }
  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0,0.6),
          end: FractionalOffset(0.0,1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1),
            Color.fromRGBO(35, 37, 57, 1)
          ]
          ),
      ),
    );
    final cajaRosa=
    Transform.rotate(
      angle: -pi/5.0,
      child:Container(
      height: 360.0,
      width: 360.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80.0),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(236, 98, 188, 1),
            Color.fromRGBO(241, 142, 172, 1)
          ])
      ),
    ));
    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -100,
          child: cajaRosa
          )
      ],
    );
  }
  Widget _titulos(){
    return SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
        child: Column(
          children:[
            Text('Classfy Transation', style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),),
            SizedBox(height:10),
            Text('Classfy this transactio into a particuular category', style: TextStyle(color: Colors.white, fontSize: 16.0, ))
          ]
        ),
      ),
    );
  }

  Widget _botonesRedondeados() {
      return Table(
        children: [
          TableRow(
            children:[
              _crearBoton(Colors.deepOrange, Icons.bubble_chart_sharp, 'Opcion 1'),
              _crearBoton(Colors.blueAccent, Icons.burst_mode_rounded, 'Opcion 2'),
            ]
          ),
            TableRow(
            children:[
             _crearBoton(Colors.greenAccent, Icons.call_merge_outlined, 'Opcion 3'),
            _crearBoton(Colors.purpleAccent, Icons.call_rounded, 'Opcion 4'),
            ]
          ),
            TableRow(
            children:[
              _crearBoton(Colors.cyan, Icons.card_membership, 'Opcion 5'),
              _crearBoton(Colors.pink, Icons.category_sharp, 'Opcion 6'),
              
            ]
          )
          
        ],
      );
      
  }
  Widget _crearBoton(Color color, IconData icon, String txt){
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX:0.2, sigmaY:0.2),
      child: Container(
       height: 180,
       margin: EdgeInsets.all(15),
       decoration: BoxDecoration(
         color:Color.fromRGBO(62, 66, 107, 0.7), 
         borderRadius: BorderRadius.circular(20)
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
              SizedBox(height:5.0),
             CircleAvatar(
               radius: 35.0,
               backgroundColor: color,
               child:Icon(icon, color: Colors.white,size: 30.0,)
               ),
               Text(txt, style:  TextStyle(color: color),),
               SizedBox(height:5.0)
           ],),
      ),
    );
  }
}