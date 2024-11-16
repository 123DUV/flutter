import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_app/presentacion/providers/chat_proviers.dart';
import 'package:si_no_app/presentacion/widgets/chat/mi_mensaje_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/chat/su_mensaje_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/chat/compartido/caja_de_texto.dart';

class ChatPantalla extends StatelessWidget{
  const ChatPantalla({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar( 
        leading: const Padding( 
          padding: EdgeInsets.all(0.0),
          child: CircleAvatar( 
             backgroundImage:  
             NetworkImage('https://www.bing.com/images/search?view=detailV2&ccid=zlRulyIY&id=9412692DF940EB0FA99396CE4294B91465923512&thid=OIP.zlRulyIYEfLPsw0mYVpM3AHaDt&mediaurl=https%3a%2f%2fworld-schools.com%2fwp-content%2fuploads%2f2023%2f01%2fIMG-Academy-cover-WS.webp&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.ce546e97221811f2cfb30d26615a4cdc%3frik%3dEjWSZRS5lELOlg%26pid%3dImgRaw%26r%3d0&exph=950&expw=1900&q=img&FORM=IRPRST&ck=7C3F552C021BE78C1522897591E73037&selectedIndex=0&itb=0'),
          ),
        ),
        title: const Text('Emilia'),
        centerTitle: false,
      ),
      body: _ChatView()
    );
  }
}
class _ChatView extends StatelessWidget{
  @override 
  Widget build(BuildContext context){

    final chatProviders = context.watch<ChatProviers>();
    return SafeArea( 
      child: Padding( 
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column( 
          children: [ 
            Expanded( 
              child: ListView.builder( 
                itemCount: 100,
                itemBuilder: (context, index){
                  return(index % 2 ==0 )
                  ? const SuMensajeBurbuja()
                  : const MiMensajeBurbuja();
                }
              )
            ),
            CajadeTexto(
              onValue: chatProviders.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}