import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:weather_app/sceeens/homeScreen.dart';
import 'package:weather_app/sceeens/wether_screen.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
class bottom_nav_bar extends StatefulWidget {
  bottom_nav_bar({Key? key}) : super(key: key);

  @override
  State<bottom_nav_bar> createState() => _bottom_nav_barState();
}

class _bottom_nav_barState extends State<bottom_nav_bar> {
    List screens=[homeScreen(),wether_screen(),homeScreen(),wether_screen()];
   /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 2);

  /// Controller to handle bottom nav bar and also handles initial page
  final _controller = NotchBottomBarController(index: 2);

  int maxCount = 5;
   /// widget list
  final List<Widget> bottomBarPages = [
    homeScreen(),
    wether_screen(), 
    homeScreen(),
    wether_screen(),
    homeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              /// Provide NotchBottomBarController
              notchBottomBarController: _controller,
              color: Colors.white.withOpacity(.5),
              showLabel: false,
              notchColor: Colors.black87,

              /// restart app if you change removeMargins
              removeMargins: false,
              bottomBarWidth: 500,
              durationInMilliSeconds: 300,
              bottomBarItems:const [
               BottomBarItem(
                  inActiveItem: Icon(
                    Icons.add_alert_sharp,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                     Icons.add_alert_sharp,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Page 1',
                ),
                 BottomBarItem(
                  inActiveItem: Icon(
                    Icons.wind_power,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                     Icons.wind_power,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Page 2',
                ),

                ///svg example
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                     Icons.home,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Page 3',
                ),
                 BottomBarItem(
                  inActiveItem: Icon(
                    Icons.edit,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 4',
                ),
                 BottomBarItem(
                  inActiveItem: Icon(
                    Icons.more_horiz,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 5',
                ),
              ],
              onTap: (index) {
                /// perform action on tab change and to update pages you can update pages without pages
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
            )
          : null,
    );
  }
}