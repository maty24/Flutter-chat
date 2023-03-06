import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    //tener el control del texto del input
    final textController = TextEditingController();
    //cuando nescesito un focus
    final focusNode = FocusNode();

    //para reeutilizar el codigo
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
      hintText: 'Escribe una wea al final con "?"',
      enabledBorder: outlineInputBorder, //por defecto
      focusedBorder: outlineInputBorder, //cuando apreto el input
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          //obtengo el valor del input
          final textValue = textController.value.text;
          print('button: $textValue');
          textController.clear();
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        //cuando apreto fuera del input me saca el foco
        focusNode.unfocus();
      },
      //para ver el focus
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode
            .requestFocus(); //para que mantenga el teclado el foco y no se cierre
      },
    );
  }
}
