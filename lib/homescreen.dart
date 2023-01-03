import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'dart:ui';

import 'components/fabmenu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // initializing video player
  final VideoPlayerController videoPlayerController =
      VideoPlayerController.asset("assets/home.mp4");

  ChewieController? chewieController;

  // init State
  @override
  void initState() {
    var screenWidthPixels = window.physicalSize.shortestSide;
    var screenHeightPixels = window.physicalSize.longestSide;
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: screenWidthPixels / screenHeightPixels,
      autoPlay: true,
      looping: true,
      autoInitialize: true,
      showControls: false,
    );

    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Chewie(
              controller: chewieController!,
            ),
            Container(
              color: Colors.grey.shade900.withOpacity(0.35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Image(
                      image: AssetImage('assets/logo.png'),
                      color: Colors.white,
                      height: 200,
                      width: 500),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: const FabMenu());
  }
}
