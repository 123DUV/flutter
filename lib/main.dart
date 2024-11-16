import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_app/config/tema/app_tema.dart';
import 'package:si_no_app/presentacion/pantallas/chat_pantalla.dart';
import 'package:si_no_app/presentacion/providers/chat_proviers.dart';

void main() => runApp(const MyApp()) ;
  
class MyApp extends StatelessWidget{
    const MyApp({super.key});

    @override
    Widget build(BuildContext context){
      return MultiProvider(
        providers: [ 
          ChangeNotifierProvider(create: (_)=>ChatProviers())
        ],
        child: MaterialApp(
        title: 'Yes no app',
        debugShowCheckedModeBanner: false,
        theme: AppTema().theme(),
        home: const ChatPantalla( 
        
          )
          
        ),
      );
    }
  
}