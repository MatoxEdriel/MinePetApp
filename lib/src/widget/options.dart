import 'package:flutter/material.dart';

class buttonStateLess extends StatelessWidget {
  //Siempre iria un final recuerda que el final NO ES COMO UN CONSTANTE}]
  //Si no el final es como recibe el primer valor y con ese se queda
  //

  final String text;

  final Color color;

  const buttonStateLess({
    required this.text,
    required this.color,
    //Sirve para que flutter identifique el widget y no lo tenga que hacer desde 0, y no pierda su estado
    super.key,
  });

  //al parecer ya viene con la clase statelesswideget
  //y seria como el html  aqui con este lo dibujas 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(color: color, child: Text(text));
  }
}
