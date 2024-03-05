import 'package:carousel_slider/carousel_slider.dart';
import 'package:clickchic/components/text_format.dart';

import 'package:clickchic/components/textfield_styling.dart';
import 'package:clickchic/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "HomePage";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> sliderItems = [
    const CustomCard(),
    const CustomCard(),
  ];

  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const CustomTextField(),
                  ),
                  Image.asset(
                    'assets/images/filter.png',
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              CarouselSlider(
                items: sliderItems,
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (index, reason) {
                    _selectedItem = index;
                    setState(() {});
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              AnimatedSmoothIndicator(
                activeIndex: _selectedItem,
                count: sliderItems.length,
                effect: const WormEffect(),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const PoppinsText(
                    text: "Sale",
                    fontS: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        PoppinsText(text: 'All'),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                  ),
                                  PoppinsText(text: '4.5'),
                                ],
                              ),
                              Icon(
                                Icons.favorite_outline,
                                size: 20,
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/bag.png',
                            height: 70,
                            width: 100,
                          ),
                          const PoppinsText(
                            text: 'Title',
                          ),
                          const PoppinsText(
                            text: '12 \$',
                            fontS: 12,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
