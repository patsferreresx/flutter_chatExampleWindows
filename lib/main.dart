import 'package:chat_teste/color.dart';

import 'chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elai Teste',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false, // eu adicionei
        primaryColor: KColor.primaryColor,
        iconTheme: IconThemeData(color: KColor.iconColor),
      ),
      home: ChatBody(),
    );
  }
}
