import 'package:flutter/material.dart';
import 'package:yes_app/presentation/widgets/chat/colo_message_bubble.dart';
import 'package:yes_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          //imagen circular
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://instagram.fscl13-1.fna.fbcdn.net/v/t51.2885-19/290899171_402872441888287_3439243219684149278_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fscl13-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=0LC2BdfLH5cAX-HPeCd&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDuFccP3TBezSbN4Yfu7r6N3qNEFPJo2CmOk-BspwOLvg&oe=6405E22C&_nc_sid=8fd12b'),
          ),
        ),
        title: const Text('Colo-Colo'),
        centerTitle: false, //para no centrar los titulos
      ),
      body: _ChatView(),
    );
  }
}

//lo usa el body
class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //lo pongo en un area segura, para que no se monten en el nochy y donde se cierra la app
    return SafeArea(
        //pongp column porqu voy a poner muchos widget
        child: Padding(
      //la columna la envuelvo en un padding
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 100, //me muestra 100 listas
                  itemBuilder: (context, index) {
                    //llamo al otro widget
                    return (index % 2 == 0) //si es par muestro los mensjaes del colo
                    ? const ColoMessageBubble()
                    : const MyMessageBubble();
                 
                  })),
                  //caja de texto

          const MessageFieldBox(),
        ],
      ),
    )
    );
  }
}
