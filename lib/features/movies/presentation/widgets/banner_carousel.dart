import 'package:basic_flutter/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({super.key});

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  List<Color> colorList = [Colors.red, Colors.green, Colors.purple];
  int? currentBanner = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: PageView.builder(
            // itemCount: colorList.length,
            onPageChanged: (value) {
              setState(() {
                currentBanner = value % colorList.length;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 160,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/login_bg.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                          gradient: LinearGradient(colors: [
                            AppPallete.mainColor,
                            AppPallete.mainColor.withOpacity(0.7),
                            Colors.transparent
                          ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 15),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Watch popular movies 1917",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipisci elit",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                                const Spacer(),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(90, 26),
                                        shadowColor: Colors.transparent,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 4),
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap),
                                    child: const Text(
                                      "Watch Now",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: AppPallete.mainColor),
                                    ))
                              ],
                            ),
                          ),
                          const Spacer()
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        _indicator()
      ],
    );
  }

  Widget _indicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 0; i < colorList.length; i++)
          currentBanner == i
              ? Container(
                  width: 24,
                  height: 6,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                      color: AppPallete.mainColor,
                      borderRadius: BorderRadius.circular(100)),
                )
              : Container(
                  width: 6,
                  height: 6,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                      color: AppPallete.grey200,
                      borderRadius: BorderRadius.circular(100)))
      ],
    );
  }
}
