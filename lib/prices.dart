import 'dart:ui';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:southdowns/components/fabmenu.dart';
import 'package:video_player/video_player.dart';

class Prices extends StatefulWidget {
  const Prices({super.key});

  @override
  State<Prices> createState() => _PricesState();
}

class _PricesState extends State<Prices> {
  final VideoPlayerController videoPlayerController =
      VideoPlayerController.asset("assets/pricing.mp4");

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
                  "Special Offers",
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
                "At Southdowns Manor, we cater for a variety of tastes and budgets. We have a number of special offers running throughout the year, so be sure to take a look through some of our incredible deals before you book. Whether you’re looking for a mid-week wedding or a last-minute, intimate celebration, we’re sure we’ll be able to find the right offer for you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Montserrat-Regular',
                    letterSpacing: 0.5,
                    fontSize: 14,
                    color: Color.fromRGBO(16, 64, 64, 1)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Offer1(),
            const SizedBox(
              height: 10,
            ),
            Offer2(),
            const SizedBox(
              height: 10,
            ),
            Offer3(),
            const SizedBox(
              height: 10,
            ),
            Offer4(),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
      floatingActionButton: const FabMenu(),
    );
  }
}

class Offer1 extends StatelessWidget {
  Offer1({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                child: Text(
                  "Whirlwind Weddings",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Trajan',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Image(
                image: AssetImage('assets/offer1.jpg'),
              ),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: const Text(
                  "FROM JUST £4,500 INC VAT",
                  style: TextStyle(
                    fontFamily: 'Montserrat-regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(16, 64, 64, 1),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: const Text(
                    "ALL REMAINING DATES NOW TO MARCH",
                    style: TextStyle(
                      fontFamily: 'Montserrat-regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromRGBO(97, 167, 167, 1),
                    ),
                  )),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Flexible(
                          child: Text(
                        "WhirlWind Weddings - All remaining dates now to March From £4,500 Inc VAT These all-inclusive offer from just £4,500 inc VAT are based on 50 adult daytime guests including the wedding couple.",
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

class Offer2 extends StatelessWidget {
  Offer2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                child: Text(
                  "May 2023 - December 2023",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Trajan',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Image(
                image: AssetImage('assets/offer2.jpg'),
              ),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: const Text(
                  "FROM JUST £7000 INC VAT",
                  style: TextStyle(
                    fontFamily: 'Montserrat-regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(16, 64, 64, 1),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: const Text(
                    "FRIDAYS & SATURDAYS",
                    style: TextStyle(
                      fontFamily: 'Montserrat-regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromRGBO(97, 167, 167, 1),
                    ),
                  )),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Flexible(
                          child: Text(
                        "Book your wedding at Southdowns Manor for any Fridays & Saturday May 2023 - December 2023 These all-inclusive offers are all based on 50 adult daytime guests including the wedding couple.",
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

class Offer3 extends StatelessWidget {
  Offer3({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                child: Text(
                  "May 2023 - December 2023",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Trajan',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Image(
                image: AssetImage('assets/offer3.jpg'),
              ),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: const Text(
                  "FROM JUST £5,000 INC VAT",
                  style: TextStyle(
                    fontFamily: 'Montserrat-regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(16, 64, 64, 1),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: const Text(
                    "SUNDAYS - THURSDAY",
                    style: TextStyle(
                      fontFamily: 'Montserrat-regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromRGBO(97, 167, 167, 1),
                    ),
                  )),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Flexible(
                          child: Text(
                        "Book your wedding at Southdowns Manor for any Sunday -Thursday from May 2023 - December 2023 These all-inclusive offers are all based on 50 adult daytime guests including the wedding couple.",
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

class Offer4 extends StatelessWidget {
  Offer4({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                child: Text(
                  "Two day wedding",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Trajan',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Image(
                image: AssetImage('assets/offer4.jpg'),
              ),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: const Text(
                  "FROM £7,500 INC VAT - Two Nights included",
                  style: TextStyle(
                    fontFamily: 'Montserrat-regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(16, 64, 64, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: const Text("TWO DAY WEDDINGS AVAILABLE ALL YEAR ROUND",
                      style: TextStyle(
                        fontFamily: 'Montserrat-regular',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(97, 167, 167, 1),
                      ),
                      textAlign: TextAlign.center)),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Flexible(
                          child: Text(
                        "Southdowns Manor is delighted to offer you the opportunity to extend your wedding to two special days. Upgrade to our two-night wedding and start your celebrations the afternoon before. Offer includes 14 rooms for 28 people for the night before and the Wedding Day, plus the Honeymoon Suite on the Wedding Night. The Wedding Day is based on 50 adult daytime guests ",
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
