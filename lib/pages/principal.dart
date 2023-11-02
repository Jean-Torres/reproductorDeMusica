import 'package:flutter/material.dart';
import 'package:music_player/pages/list_player.dart';
import 'package:music_player/pages/music.dart';

class Princiopal extends StatelessWidget {
  const Princiopal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Footer(),
    );
  }
}

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  int _selectindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Music"),
        actions: <Widget>[
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.color_lens)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (BuildContext ctx) => [
                        const PopupMenuItem(
                            value: '1', child: Text('Font size')),
                        const PopupMenuItem(
                            value: '2', child: Text('Font family')),
                        const PopupMenuItem(
                            value: '3', child: Text('Language')),
                      ]),
            ],
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _selectindex = index;
          });
        },
        selectedIndex: _selectindex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.music_note_outlined),
            label: 'Music',
          ),
          NavigationDestination(
            icon: Icon(Icons.link_sharp),
            label: 'List player',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_frames_rounded),
            label: 'Home',
          ),
        ],
      ),
      body: <Widget>[
        const Music(),
        const ListPlayer(),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][_selectindex],
    );
  }
}
