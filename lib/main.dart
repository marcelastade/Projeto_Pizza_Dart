import 'package:layout/menu.dart';
import 'package:flutter/material.dart';

// para adicionar imagens, altere o arquivo pubspec.yaml alterando a atg assets: | além disso, crie uma pasta imagens pata salvá-las
// crie todos os arquivos .dart dentro da pasta lib
//subir no github: 

//cd caminho da pasta do pc 
 
// git init 
 
// git remote add origin {url do git} (code -> url)
 
// git pull origin master (main)
 
// git status 
 
// git add .
 
// git commit - m "primeiro commit"
 
// git push origin master (main)
 

void main() {
  runApp(const MyApp());
}

// // MyApp: Define a estrutura principal do aplicativo
// extends StatelessWidget: StatelessWidget é um widget que não muda seu estado interno.
// const MyAppsuper.key;: Construtor da classe, usando super.key para manter a identidade única do widget.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // @override: Substitui o método build herdado de StatelessWidget.
  // buildBuildContext context: Define a construção da interface gráfica do aplicativo

  @override
  build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData (
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      home: Menu(),
 
    );

    // MaterialApp: Widget principal que configura toda a estrutura do aplicativo
    // theme: ThemeData: Define o tema, incluindo um esquema de cores baseado em um tom de amarelo Colors.yellow.
    // useMaterial3: true: Habilita o design Material 3.
    // debugShowCheckedModeBanner: false: Remove a faixa de debug do aplicativo.
    // home: Menu: Define Menu como a tela inicial do aplicativo, que foi importado anteriormente.

  }
}