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
                  "October 2022 - Febuary 2023",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Trajan',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Image(
                image: AssetImage('assets/Oct-2022-Feb-2023-web-555x555.jpg'),
              ),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: const Text(
                  "FOR JUST £4,850 INC VAT",
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
                    "ALL MONDAYS TO THURSDAYS",
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
                        "Marry in the romantic months of October, November, December, January or February within the warm, welcoming atmosphere and beautiful surroundings of our manor house. Enjoy a reception drink as you are welcomed in from the cold, crisp winter day. This all-inclusive offer for just £4,850 inc VAT is based on 50 adult daytime guests including the wedding couple.",
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
                  "March 2023 - September 2023",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Trajan',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Image(
                image: AssetImage('assets/CL-418-of-566-555x555.jpg'),
              ),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: const Text(
                  "FOR JUST £4,850 INC VAT",
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
                    "ALL MONDAYS TO THURSDAYS",
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
                        "Book your wedding at Southdowns Manor for any Monday - Thursday from March 2023 until September 2023 March 2023 - Monday - Thursday £4,850 Inc VAT April 2023 - Monday - Thursdays £5,500 Inc VAT May, June & July 2023 Monday - Thursdays £6,500 Inc VAT August & September 2023 Monday - Thursday £7,000 Inc VAT These all-inclusive offers are all based on 50 adult daytime guests including the wedding couple.",
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
                  "Book your 2023 Wedding Today",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Trajan',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Image(
                image: AssetImage('assets/ML-Wed-432-555x555.jpg'),
              ),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: const Text(
                  "2023 is the year to say 'I Do",
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
                    "",
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
                        "Book your wedding in 2023 wedding today:- \nWinter weddings from £4,900 Inc VAT\nSpring weddings from £7,900 Inc VAT\nSummer weddings from £8,500 Inc VAT\nAutumn weddings from £7,900 Inc VAT\nTop 5 Summer Weekend Available dates:-\nFriday 2nd June 2023 - £11,900 Inc VAT\nFriday 23rd June 2023 - £11,900 Inc VAT\nSaturday 15th July 2023 - £11,900 Inc VAT\nSaturday 12th August 2023 - £12,900 Inc VAT\nSaturday 23rd September 2023 - £12,900 Inc VAT\nIncluded in all the above offers:- Exclusive use of Southdowns Manor and grounds Use of the Changing Room from 10am Wedding and Events Manager to help plan your day Cream or red aisle carpet Sparkling wine or bottled lager served after the ceremony Use of our log fire Three Course Wedding Breakfast with a variety to choose from Half a bottle of wine per guest A glass of bubbles for each adult guest for your speeches Country style evening buffet All bar and waiting staff needed for your day Use of our crystal centrepieces for your table decorations Sash of your choice of colour for the chairs All table linen and crockery, cutlery and glassware Easel for your table plan PA system Luxurious Honeymoon Suite with full English breakfast the next morning These offers are based on 50 guests, including the wedding couple and is not to be missed - be sure to get in touch sooner rather than later to avoid missing out! Our expert team are always on hand to ensure your wedding dreams become a reality, so don't hesitate to get in touch today!",
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
                image: AssetImage(
                    'assets/craig_hannah_wedding-301-WEB-555x555.jpg'),
              ),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: const Text(
                  "FROM £7,900 INC VAT - Two Nights included",
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
                        "Southdowns Manor is delighted to offer you the opportunity to extend your wedding to two special days. Upgrade to our two-night wedding and start your celebrations the afternoon before. Book your wedding on these dates:-\nThursday 13th / Friday 14th October 2022\nThursday 20th / Friday 21st October 2022\nWednesday 26th / Thursday 27th October 2022\nThursday 10th / Friday 11th November 2022\nThursday 17th / Friday 18th November 2022\nAll dates include 14 rooms for 28 people for the night before and the Wedding Day, plus the Honeymoon Suite on the Wedding Night. The Wedding Day is based on 50 adult daytime guests",
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
