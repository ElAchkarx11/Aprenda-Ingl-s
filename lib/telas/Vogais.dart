import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Vogais extends StatefulWidget {
  const Vogais({super.key});

  @override
  State<Vogais> createState() => _VogaisState();
}

class _VogaisState extends State<Vogais> {
  final player = AudioPlayer();

  //Função para executar o audio
  void _executar(String nomeAudio) {
    player.play(AssetSource("audios/${nomeAudio}.mp3"));
  }

  @override
  Widget build(BuildContext context) {


    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            _executar("a");
          },
          child: Image.asset("assets/imagens/a.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("e");
          },
          child: Image.asset("assets/imagens/e.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("i");
          },
          child: Image.asset("assets/imagens/i.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("o");
          },
          child: Image.asset("assets/imagens/o.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("u");
          },
          child: Image.asset("assets/imagens/u.png"),
        ),
      ],
    );
  }
}