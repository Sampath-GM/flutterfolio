import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;
import 'package:portfolio/constants/project_utils.dart';

class Projectcardwidget extends StatefulWidget {
  const Projectcardwidget({
    super.key,
    required this.workprojects,
  });

  final Projectutils workprojects;

  @override
  State<Projectcardwidget> createState() => _ProjectcardwidgetState();
}

class _ProjectcardwidgetState extends State<Projectcardwidget> {
  bool _hovered = false;

  void _onEnter(PointerEvent details) {
    setState(() {
      _hovered = true;
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _hovered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: MouseRegion(
        onEnter: _onEnter,
        onExit: _onExit,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          clipBehavior: Clip.antiAlias,
          height: _hovered ? 400 : 350,
          width: _hovered ? 450 : 350,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 7,
                color: Colors.white.withOpacity(0.5),
                offset: Offset(0, 3),
              ),
            ],
            color: const Color.fromARGB(255, 73, 66, 66),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: _hovered ? 400 : 350,
                  width: _hovered ? 450 : 350,
                  child: Image.asset(
                    widget.workprojects.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                top: _hovered ? 0 : screenHeight,
                left: 0,
                right: 0,
                bottom: 0,
                child: _hovered
                    ? BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          color: Colors.black.withOpacity(0.7),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    widget.workprojects.title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    widget.workprojects.subtitle,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: FractionallySizedBox(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 12,
                    ),
                    color: const Color.fromARGB(200, 63, 50, 56),
                    child: Row(
                      children: [
                        Text(
                          "Available on: ",
                          style: TextStyle(color: Colors.amber[700]),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            js.context.callMethod("open", [widget.workprojects.ioslink]);
                          },
                          child: Image.asset(
                            "images/Skills/ioa.png",
                            color: Colors.white,
                            width: 25,
                            height: 25,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Image.asset(
                              "images/Skills/android.png",
                              color: Colors.white,
                              width: 25,
                              height: 25,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Image.asset(
                              "images/Skills/web.png",
                              color: Colors.white,
                              width: 25,
                              height: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
