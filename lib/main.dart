import 'package:flutter/material.dart';
import 'package:yes_app/config/theme/app_theme.dart';
import 'package:yes_app/presentation/screens/chat/chat_screen.dart';

//mateapp -> cascaron de inicio de materiañl
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yes No App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 3).theme(), //le envio el parametro el 3
        home: const ChatScreen()
      );
  }
}
