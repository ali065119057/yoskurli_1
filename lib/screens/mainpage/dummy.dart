import 'package:flutter/material.dart';

// class cardmenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Frame53Widget - FRAME
    return Container(
        width: 319,
        height: 50,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 150.86563110351562,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight:
                          Radius.circular(
                              0),
                      bottomLeft:
                          Radius.circular(
                              10),
                      bottomRight:
                          Radius.circular(10),
                    ),
                    color: const Color.fromRGBO(
                        255, 255, 255, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(
                          100, 67, 155, 1),
                      width: 1,
                    ),
                  ))),
          const Positioned(
              top: 22,
              left: 14.7720947265625,
              child: Text(
                'Doctor Online Now',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(
                        0, 0, 0, 1),
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    letterSpacing:
                        -0.3333333432674408,
                    fontWeight: FontWeight.normal,
                    height: 0.4642857142857143),
              )),
          Positioned(
              top: 6,
              left: 127.7720947265625,
              child: Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(
                        122, 155, 67, 1),
                    borderRadius:
                        BorderRadius.all(
                            Radius.elliptical(
                                6, 6)),
                  ))),
          Positioned(
              top: 0,
              left: 168,
              child: Container(
                  width: 150.86563110351562,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.only(
                      topLeft:
                          Radius.circular(
                              0),
                      topRight:
                          Radius.circular(
                              0),
                      bottomLeft:
                          Radius.circular(
                              10),
                      bottomRight:
                          Radius.circular(
                              10),
                    ),
                    color: const Color.fromRGBO(
                        255, 255, 255, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(
                          100, 67, 155, 1),
                      width: 1,
                    ),
                  ))),
          const Positioned(
              top: 22,
              left: 195.7720947265625,
              child: Text(
                'Nearby Doctor',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(
                        0, 0, 0, 1),
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    letterSpacing:
                        -0.3333333432674408,
                    fontWeight: FontWeight.normal,
                    height: 0.4642857142857143),
              )),
          Positioned(
              top: 6,
              left: 295.7720947265625,
              child: Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(
                        122, 155, 67, 1),
                    borderRadius:
                        BorderRadius.all(
                            Radius
                                    .elliptical(
                                6, 6)),
                  ))),
        ]));
  }
