import 'package:flutter/material.dart';
import 'package:southdowns/components/fabmenu.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  child: Image(
                    image: AssetImage('assets/about.jpg'),
                    height: 200,
                    width: 400,
                    fit: BoxFit.cover,
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
                const Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Text(
                    "A West Sussex wedding venue nestled in the heart of the South Downs National Park is the tranquil and exquisite Southdowns Manor – a stunning wedding venue for exclusive use for your family and friends.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Montserrat-Regular',
                        letterSpacing: 0.5,
                        fontSize: 14,
                        color: Color.fromRGBO(16, 64, 64, 1)),
                  ),
                ),
                Container(
                  color: const Color.fromRGBO(16, 64, 64, 1),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                "An Idylic Setting For\nThe Perfect Wedding",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Montserrat-Regular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.grey.shade300,
                                    letterSpacing: 0.5),
                              ),
                            )
                          ]),
                      Row(children: [
                        Flexible(
                            child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                          child: Text(
                            "Southdowns Manor, a beautiful setting for the perfect wedding, reception or corporate function, is situated in the heart of the South Downs National Park. Southdowns Manor is within easy reach of Portsmouth, Guildford and Southampton, bordering the counties of Hampshire, Surrey and West Sussex. Our beautifully refurbished, prestigious wedding venue is offered to you exclusively – your home for the day.Southdowns Manor retains its original charm and character while offering modern comforts, presenting a wonderful atmosphere. This beautiful Manor House provides a relaxed and intimate haven for smaller events and is able to accommodate larger parties just as successfully; the classic elegance of Southdowns Manor has it all. We offer our unique venue for your wedding and reception and can cater for many specific cultural requirements.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Montserrat-Regular',
                                color: Colors.grey.shade300,
                                letterSpacing: 0.3,
                                fontSize: 14),
                          ),
                        ))
                      ]),
                    ],
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          "Our History",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Montserrat-Regular',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromRGBO(97, 167, 167, 1),
                              letterSpacing: 0.5),
                        ),
                      )
                    ]),
                Row(children: const [
                  Flexible(
                      child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 100),
                    child: Text(
                      "Southdowns Manor was originally built as a two-storey house, with three striking bay windows, towards the end of the 19th century by the Hon John Jervis Carnegie (1807-1892), who had bought the neighbouring Fair Oak estate from the Paget family in about 1850. High Sheriff of Sussex in 1862, he was the third son of the 7th Earl of Northesk and his initials can be seen on the stone boundary post to the left of the Southdowns entrance. The Northesk family retained the Fair Oak estate until recently; however, Southdowns Manor was sold before 1895, at which point the top floor and water tower were built. At that time it was the home of a German artist, Rudolf Blind and, later, of the Boys family. For many years the house was run as an independent school, becoming the Southdowns Guest House before the last war. During the war it provided a billet for members of the Royal Canadian Air Force. The current owners purchased the building in the summer of 2013 and undertook an extensive refurbishment of the property, before opening its doors once again in December 2013, offering the venue for weddings on an exclusive-use basis.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Montserrat-Regular',
                          color: Color.fromRGBO(16, 64, 64, 1),
                          letterSpacing: 0.3,
                          fontSize: 14),
                    ),
                  ))
                ]),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: const FabMenu(),
    );
  }
}
