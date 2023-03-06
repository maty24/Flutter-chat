import 'package:flutter/material.dart';

class ColoMessageBubble extends StatelessWidget {
  const ColoMessageBubble({super.key});
  @override
  Widget build(BuildContext context) {
    //me busca los colores dentro del contexto y el primero que encutra lo pone osea los colores globales
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, //pongo el texto a la izquierda
      children: [
        Container(
          decoration: BoxDecoration(
              //eligo el segundo color
              color: colors.secondary,
              borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola mundo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        _ImageBubble(),
        const SizedBox(height: 10)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //esto hace que busque los px del dispositivo de que esta montado
    final size = MediaQuery.of(context).size;

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://yesno.wtf/assets/no/31-cc391a4c0332a4ce5b4d4666f64a7b4a.gif',
          width: size.width * 0.7, //quiero el 70 % de ancho del dispositivo
          height: 150,
          fit: BoxFit.cover, // que adapte la imgen en los border dados
          //algo que se va a contruir en tiempo de ejecucion
          loadingBuilder: (context, child, loadingProgress) {
            //si no esta cargando me envia la hijo osea la imagen
            if (loadingProgress == null) return child;

//si esta cargando me envia esto por mientras
            return Container(
              width: size.width * 0.7, //quiero el 70 % de ancho del dispositivo
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Text('Colo esta enviando una img'),
            );
          },
        ));
  }
}
