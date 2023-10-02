import 'package:flutter/material.dart';

import 'package:flutter_ingles/telas/Bichos.dart';
import 'package:flutter_ingles/telas/Numeros.dart';
import 'package:flutter_ingles/telas/Vogais.dart';
import 'package:flutter_ingles/telas/Videos.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController; //controlador de tabs para navegação

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprenda inglês"),
        bottom: TabBar(
          indicatorWeight: 4, //espessura da barra indicadora
          indicatorColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: "Bichos"),
            Tab(text: "Números"),
            Tab(text: "Vogais"),
            Tab(text: "Videos"),
          ]
        ), //estilo do texto da guia quando selecionado
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Bichos(),
          Numeros(),
          Vogais(),
          Videos(),
        ]
      ),
    );
  }
}