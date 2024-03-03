import 'package:clickchic/models/onboard_screen_model.dart';
import 'package:clickchic/pages/login_page.dart';
import 'package:clickchic/widgets/on_board.dart';
import 'package:clickchic/widgets/dot_indicator.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  static const String routeName = 'StartPage';
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: onBoardData.length,
            onPageChanged: (index) {
              _pageIndex = index;
              setState(() {});
            },
            itemBuilder: (context, index) => OnBoard(
              title: onBoardData[index].title,
              disc: onBoardData[index].disc,
              imagePath: onBoardData[index].imagePath,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                ...List.generate(
                  onBoardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: DotIndicator(
                      isActive: index == _pageIndex,
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.ease,
                      );
                      if (_pageIndex == 2) {
                        Navigator.pushNamed(context, LoginPage.routeName);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Colors.black,
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
