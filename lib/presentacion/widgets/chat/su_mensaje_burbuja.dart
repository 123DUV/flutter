import 'package:flutter/material.dart';

class SuMensajeBurbuja extends StatelessWidget{
  const SuMensajeBurbuja({super.key});

  @override 
  Widget build(BuildContext context){
    final colors = Theme.of(context).colorScheme;
    return Column( 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
        Container( 
          decoration: BoxDecoration( 
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding( 
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('mensaje respondido', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 5),
        _ImagenBurbuja(),
        const SizedBox(height: 10),
      ],
    );
  }
}
class _ImagenBurbuja extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;
    return ClipRRect( 
      borderRadius: BorderRadius.circular(20),
      child: Image.network( 
        'https://www.bing.com/images/search?view=detailV2&ccid=zlRulyIY&id=9412692DF940EB0FA99396CE4294B91465923512&thid=OIP.zlRulyIYEfLPsw0mYVpM3AHaDt&mediaurl=https%3a%2f%2fworld-schools.com%2fwp-content%2fuploads%2f2023%2f01%2fIMG-Academy-cover-WS.webp&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.ce546e97221811f2cfb30d26615a4cdc%3frik%3dEjWSZRS5lELOlg%26pid%3dImgRaw%26r%3d0&exph=950&expw=1900&q=img&FORM=IRPRST&ck=7C3F552C021BE78C1522897591E73037&selectedIndex=0&itb=0',
        width: size.width*0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress){ 
          if(loadingProgress==null)return child;
          return Container( 
            width: size.width*0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('esta enviando una imagen'),
          );
        },
      )
    );
  }
}