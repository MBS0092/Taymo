import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'dart:ui' as prefix0;

import 'package:getwidget/getwidget.dart';

class AlbumPost extends StatelessWidget {
  const AlbumPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(60),
                bottomLeft: Radius.circular(60),
              ),
              child: Container(
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "data:image/jpeg;base64,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",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: prefix0.ImageFilter.blur(sigmaX: 7, sigmaY: 14),
                  child: Container(
                    color: Colors.black.withOpacity(0.7),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              child: Image.asset("assets/images/symbol.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: GFAvatar(
                                backgroundColor: Colors.blue,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "data:image/jpeg;base64,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",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Container(
                            width: 250,
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                BalloonSlider(
                                  value: 0,
                                  onChanged: (value) {},
                                  showRope: true,
                                  onChangeStart: (value) {},
                                  onChangeEnd: (value) {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),


          ],
        ),
      ),
    );
  }
}
