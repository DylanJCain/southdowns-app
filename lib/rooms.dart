import 'dart:ui';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:southdowns/components/fabmenu.dart';
import 'package:video_player/video_player.dart';

class Rooms extends StatefulWidget {
  const Rooms({super.key});

  @override
  State<Rooms> createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  final VideoPlayerController videoPlayerController =
      VideoPlayerController.asset("assets/rooms.mp4");

  ChewieController? chewieController;
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
      body: SafeArea(
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Chewie(
                    controller: chewieController!,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "SOUTHDOWNS MANOR",
                  style: TextStyle(
                      fontFamily: 'Trajan',
                      color: Color.fromRGBO(97, 167, 167, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Rooms",
                  style: TextStyle(
                      fontFamily: 'Montserrat-Regular',
                      color: Color.fromRGBO(16, 64, 64, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Text(
                "We have a total of 14 beautiful guest rooms here at Southdowns Manor, along with our magnificent Honeymoon Suite. Two of these guest rooms are luxury double suites. Let your guests stay over with you, so you can relive the memories all together in the morning over a delicious breakfast. We also offer a Changing Suite, which is included in the venue fee, and a selection of guest rooms can be booked on a day-use only basis.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Montserrat-Regular',
                    letterSpacing: 0.5,
                    fontSize: 14,
                    color: Color.fromRGBO(16, 64, 64, 1)),
              ),
            ),
            const Honeymoon(),
            Suite1(),
            Suite2(),
            const GuestRooms()
          ],
        ),
      ),
      floatingActionButton: const FabMenu(),
    );
  }
}

class Honeymoon extends StatelessWidget {
  const Honeymoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                child: Text(
                  "Honeymoon Suite",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Trajan',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Image(
                image: AssetImage('assets/Honeymoon.jpg'),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: const Divider(
                  color: Colors.black,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Flexible(
                          child: Text(
                        "The Honeymoon Suite offers you the perfect end to the perfect day. With a beautiful four-poster bed and stunning en suite facilities complete with circular bath, large walk-in shower and double sink, it offers the ultimate in luxury décor, finish and amenities. The suite offers stunning views over the South Downs National Park.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Montserrat-Regular'),
                      ))
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Suite1 extends StatelessWidget {
  Suite1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                child: Text(
                  "Suite 1",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Trajan',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Image(image: AssetImage('assets/Suite1.jpg')),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: const Divider(
                  color: Colors.black,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Flexible(
                          child: Text(
                        "Perfect for couples. Situated on the first floor of the house this impressive suite, with its breathtaking views and elegant style, offers luxurious en suite accommodation.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Montserrat-Regular'),
                      ))
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Suite2 extends StatelessWidget {
  Suite2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                child: Text(
                  "Suite 2",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Trajan',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Image(image: AssetImage('assets/Suite2.jpg')),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: const Divider(
                  color: Colors.black,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Flexible(
                          child: Text(
                        "A beautiful deluxe double suite, this room is elegant and classic in style with stunning en suite facilities. With a large bay window, this light and airy room is a perfect tranquil haven for your specially chosen guests.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Montserrat-Regular'),
                      ))
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GuestRooms extends StatelessWidget {
  const GuestRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 80),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                child: Text(
                  "12 Guest rooms",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Trajan',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Image(image: AssetImage('assets/GuestRooms.jpg')),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: const Divider(
                  color: Colors.black,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Flexible(
                          child: Text(
                        "We have 12 good-sized double rooms with high quality mattresses and pillows to ensure your guests have a comfortable and enjoyable stay. Each room has unique decor and is equipped with amenities to cater for your guests' every need.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Montserrat-Regular'),
                      ))
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
