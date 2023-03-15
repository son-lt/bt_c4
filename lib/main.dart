import 'package:bt_c4/ui/widgets/help_view.dart';
import 'package:bt_c4/ui/widgets/profile_card.dart';
import 'package:bt_c4/ui/widgets/video_player_view.dart';
import 'package:bt_c4/ui/widgets/youtube_player_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BT_C4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: const [
            HelpView(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: ProfileCard(),
            ),
            HelpView(isSvg: true),
            VideoPlayerView(),
            YoutubePlayerView(),
          ],
        ),
      ),
    );
  }
}
