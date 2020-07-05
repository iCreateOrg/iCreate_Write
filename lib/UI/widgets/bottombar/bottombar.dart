import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:write/UI/pageviews/home.dart';
import 'package:write/services/utils/color.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  void _onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void _bottomTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: GlobalColors.blackColor,
        body: PageView(
          // physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: <Widget>[
            Container(child: MainCollapsingToolbar()),
            Container(child: Center(child: Text('Hello'),)),
            Container(child: Center(child: Text('Hello'),)),
          ],
        ),
        bottomNavigationBar: Container(
          color: blackColor,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: CupertinoTabBar(
              onTap: _bottomTapped,
              currentIndex: _page,
              backgroundColor: Colors.black,
              items: <BottomNavigationBarItem>[
                _bottomNavigationBarItem(
                    "Home",
                    0,
                    Icon(
                      Icons.home,
                      size: 30,
                      color: _page == 0
                          ? blueColor
                          : Colors.white
                    )),
                _bottomNavigationBarItem(
                    "Tasks",
                    1,
                    Icon(
                      Icons.account_circle,
                      size: 30,
                      color: _page == 1
                          ? blueColor
                          : Colors.white,
                    )),
                _bottomNavigationBarItem(
                    "Notes",
                    2,
                    Icon(
                      Icons.settings,
                      size: 30,
                      color: _page == 2
                          ? blueColor
                          : Colors.white,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem(
      String label, int number, Widget icon) {
    return BottomNavigationBarItem(
      icon: icon,
      // title: Text(
      //   label,
      //   style: TextStyle(
      //     fontSize: 10,
      //     color:
      //         _page == number ? GlobalColors.redColor : GlobalColors.greyColor,
      //   ),
      // ),
    );
  }
}