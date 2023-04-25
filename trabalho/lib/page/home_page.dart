// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers
//Guilherme Stasinaafo Pereira
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //Quantidade de TABS
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Animes'),
          centerTitle: true,
          bottom: criarTabBar(),
          backgroundColor: Colors.purple.shade900,
        ),
        body: TabBarView(
          children: [
            //Conteúdo do Item 1
            Container(child: Center(child: Text('Ação'))),
            //Conteúdo do Item 2
            Container(child: Center(child: Text('Aventura'))),
            //Conteúdo do Item 3
            Container(child: Center(child: Text('Romace'))),
            //Conteúdo do Item 4
            Container(child: Center(child: Text('Terror'))),
            //Conteúdo do Item 5
            Container(child: Center(child: Text('Isekai'))),
          ],
        ),
      ),
    );
  }

  //
  // Criação da TabBar
  //
  TabBar criarTabBar() {
    return TabBar(
      tabs: [
        // Item 1
        Row(
          children: [
            SizedBox(width: 5),
            Text('Ação'),
          ],
        ),
        // Item 2
        Row(
          children: [
            SizedBox(width: 5),
            Text('Aventura'),
          ],
        ),
        // Item 3
        Row(
          children: [
            SizedBox(width: 5),
            Text('Romace'),
          ],
        ),
        // Item 4
        Row(
          children: [
            SizedBox(width: 5),
            Text('Terror'),
          ],
        ),
        // Item 5
        Row(
          children: [
            SizedBox(width: 5),
            Text('Isekai'),
          ],
        ),
      ],
      //
      // Propriedades
      //
      isScrollable: true,
      indicatorColor: Colors.amberAccent.shade100,
      indicatorWeight: 3,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white24,
    );
  }
}
