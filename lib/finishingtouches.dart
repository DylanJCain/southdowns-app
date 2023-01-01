import 'dart:ui';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:southdowns/components/fabmenu.dart';
import 'package:video_player/video_player.dart';

class FT {
  final String title;
  final String price;
  final String image;
  final String sub;
  final String desc;
  FT(this.title, this.price, this.image, this.sub, this.desc);
}

class FinishingTouches extends StatefulWidget {
  const FinishingTouches({super.key});

  @override
  State<FinishingTouches> createState() => _FinishingTouchesState();
}

class _FinishingTouchesState extends State<FinishingTouches> {
  final List<FT> _items = [
    FT(
        "'I Do' Package",
        "£300 inc vat",
        "assets/package1.jpg",
        "Add some special touches to enhance your wedding day",
        "■ POST BOX\n■ RUSTIC LADDER\n■ CREAM CARPET\n■ LANTERN LOVE LIGHTS\n■ LOVE LIGHTS"),
    FT(
        "Evening Sparkle Package",
        "from £1100 inc vat",
        "assets/Sparkle-555x555.jpg",
        "We have teamed up with Smiles Better Photo Booth and our Resident DJ to enhance your evening in one sparkling package Choice of Photo Booth or selfie mirror, DJ and LOVE lights",
        "■ CHOICE OF PHOTO BOOTH OR SELFIE MIRROR\n■ RESIDENT DJ\n■ LOVE LIGHTS"),
    FT(
        "Sparkle Package",
        "£80 inc vat",
        "assets/IMG_1552-555x555.jpg",
        "Add some sparkle to the room with our sequined table runners and centre-piece upgrades",
        "■ CENTRE PIECE UPGRADE - Based on 5 tables plus top table\n■ SEQUIN TABLE RUNNERS - Based on 5 tables plus top table\n■ RUSTIC LADDER"),
    FT(
        "Love to Dance Package",
        "from £750 inc vat",
        "assets/Love-to-dance-555x555.jpg",
        "Make it an evening to remember with our trusted DJ providing the soundtrack to your celebrations. Add some magic to the room with our LOVE lights and sweet cart",
        "■ WEDDING COUPLES SWEET CART\n■ RESIDENT DJ\n■ LOVE LIGHTS"),
    FT(
        "Pizza Buffet",
        "£2 inc vat | Per Person",
        "assets/pizza-2380025_1920-1-555x555.jpg",
        "Try our brand new Pizza Buffet...",
        "■ LOOKING FOR SOMETHING DIFFERENT FOR YOUR EVENING BUFFET? £2.00 INC VAT PER PERSON"),
    FT(
        "Reception Packages",
        "from £8 inc vat | Per Person",
        "assets/blossom2-1-555x555.jpg",
        "ADD SOME SPECIAL TOUCHES TO ENHANCE YOUR WEDDING DAY WITH ONE OF OUR CANAPÉS AND DRINK PACKAGES",
        "■ Perfect Package - Choice of 3 Canapés and upgrade to Prosecco or Peroni. - £8.00 per person inc VAT\n■ Winter Warmer Package - Choice of 3 Canapés & Mince Pies with Mulled Wine or Cider. - £9.50 per person inc VAT\n■ Sweet Summer Package - Choice of 3 Canapés & Fish and Chip Cones with Pimms and Lemonade. - £9.50 per person inc VAT"),
  ];

  final VideoPlayerController videoPlayerController =
      VideoPlayerController.asset("assets/finishingtouches.mp4");

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
        child: ListView(children: <Widget>[
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
              Flexible(
                child: Text(
                  "Find a package that's right for your special day",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Montserrat-Regular',
                      color: Color.fromRGBO(16, 64, 64, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Text(
              "Sometimes it’s the finer details that set your special day apart from the rest. Those finishing touches can elevate your wedding to the next level, and here at Southdowns Manor we have all the bases covered with a variety of wedding packages to suit most tastes.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Montserrat-Regular',
                  letterSpacing: 0.5,
                  fontSize: 14,
                  color: Color.fromRGBO(16, 64, 64, 1)),
            ),
          ),
          ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: _items.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Center(
                      child: Card(
                        color: const Color.fromRGBO(231, 239, 239, 1),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(6, 2, 6, 2),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _items[index].title,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Trajan',
                                        fontWeight: FontWeight.bold),
                                    //textAlign: TextAlign.left,
                                  ),
                                  Flexible(
                                    child: Text(
                                      _items[index].price,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Montserrat-regular',
                                        //fontWeight: FontWeight.reg,
                                        color: Color.fromRGBO(7, 167, 167, 1),
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Image(
                              image: AssetImage(_items[index].image),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Text(
                                _items[index].sub,
                                style: const TextStyle(
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
                              margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                        child: Text(
                                      _items[index].desc,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontFamily: 'Montserrat-Regular',
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromRGBO(97, 167, 167, 1)),
                                    )),
                                  ]),
                            ),
                            const SizedBox(height: 5)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 80)
        ]),
      ),
      floatingActionButton: const FabMenu(),
    );
  }
}
