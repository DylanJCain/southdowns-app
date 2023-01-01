import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:southdowns/components/fabmenu.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  static const double _defaultLat = 50.990338902127895;
  static const double _defaultLng = -0.826131927436015;

  static const CameraPosition _defaultLocation =
      CameraPosition(target: LatLng(_defaultLat, _defaultLng), zoom: 15);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: Contact._defaultLocation,
            mapToolbarEnabled: false,
            zoomControlsEnabled: false,
            compassEnabled: false,
            myLocationButtonEnabled: false,
            markers: {
              const Marker(
                  markerId: MarkerId("Southdowns Manor"),
                  position: LatLng(50.990338902127895, -0.826131927436015),
                  draggable: false,
                  infoWindow: InfoWindow(
                      title: "Southdowns Manor",
                      snippet:
                          "Dumpford Lane, Trotton, Petersfield, GU31 5JN ,England")),
            },
          ),
          Column(
            children: [
              Container(
                height: 25,
                color: Colors.grey.shade300,
              ),
              Container(
                color: Colors.grey.shade300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Get in Touch",
                      style: TextStyle(
                        fontFamily: 'Trajan',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Flexible(
                      child: Text(
                        "For a copy of our brochure, up to date pricing and information on open events and special offers please get in touch",
                        style: TextStyle(
                          fontFamily: 'Montserrat-regular',
                          fontSize: 12,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 10,
                color: Colors.grey.shade300,
              ),
              Container(
                color: Colors.grey.shade300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: FloatingActionButton(
                        heroTag: "btn1",
                        elevation: 5,
                        backgroundColor: const Color.fromRGBO(16, 64, 64, 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                        onPressed: _launchTel,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Call us",
                              style: TextStyle(
                                  fontFamily: 'Montserrat-Regular',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 2),
                            Icon(Icons.phone)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: FloatingActionButton(
                        heroTag: "btn2",
                        backgroundColor: const Color.fromRGBO(16, 64, 64, 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                        onPressed: _launchEmail,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Email us",
                              style: TextStyle(
                                  fontFamily: 'Montserrat-Regular',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 2),
                            Icon(Icons.email)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(height: 10, color: Colors.grey.shade300),
              Row(
                children: [
                  Expanded(
                      child: FloatingActionButton(
                    heroTag: "btn3",
                    elevation: 5,
                    backgroundColor: const Color.fromRGBO(7, 167, 167, 1),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    onPressed: _launchURL,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Request a Brochure",
                          style: TextStyle(
                              fontFamily: 'Montserrat-Regular',
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ))
                ],
              )
            ],
          ),
        ],
      ),
      floatingActionButton: const FabMenu(),
    );
  }
}

_launchURL() async {
  const url = 'https://www.southdownsmanor.co.uk/request-a-brochure/';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

_launchEmail() async {
  const url = 'mailto:enquiries@southdownsmanor.co.uk';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

_launchTel() async {
  const url = 'tel:01730 763800';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
