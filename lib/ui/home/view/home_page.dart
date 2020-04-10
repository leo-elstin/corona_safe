import 'package:coronasafe/font_data.dart';
import 'package:coronasafe/localization.dart';
import 'package:coronasafe/ui/home/view/widgets/search_view.dart';
import 'package:coronasafe/ui/home/view/widgets/settings_view.dart';
import 'package:coronasafe/ui/home/view/widgets/test_view.dart';
import 'package:coronasafe/ui/home/view/widgets/trending_view.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int index = 0;
  PageController _pageController;
  List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, keepPage: true);
    _pages = [
      HomeView(),
      TestView(),
      SearchView(),
      SettingsView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Covid\'19',
          style: TextStyle(
            color: Colors.black,
            fontFamily: caviarDreams,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: _pages,
        onPageChanged: (int i) {
          setState(() {
            index = i;
          });
        },
      ),
      bottomNavigationBar: FancyBottomBar(
        selectedIndex: index,
        type: FancyType.FancyV1, // Fancy Bar
        items: [
          FancyItem(
            textColor: Colors.black,
            title: '${AppLocalizations.of(context).home}',
            icon: Icon(Icons.home),
          ),
          FancyItem(
            textColor: Colors.black,
            title: '${AppLocalizations.of(context).selfTest}',
            icon: Icon(Icons.child_care),
          ),
          FancyItem(
            textColor: Colors.black,
            title: '${AppLocalizations.of(context).search}',
            icon: Icon(Icons.search),
          ),
          FancyItem(
            textColor: Colors.black,
            title: '${AppLocalizations.of(context).settings}',
            icon: Icon(Icons.settings),
          ),
        ],
        onItemSelected: (i) {
          _pageController.animateToPage(
            i,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeOut,
          );
          setState(() {
            index = i;
          });
        },
      ),
    );
  }
}
