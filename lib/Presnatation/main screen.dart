import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'authentication pages/login_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  int _selectedIndex = 1;

  List<Widget> _widgetOptions = <Widget> [
    LogInPage(),
    LogInPage(),
    LogInPage(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {


    double w = MediaQuery.of(context).size.width;

    double h=  MediaQuery.of(context).size.height;
    return Scaffold(

      bottomNavigationBar: Container(

        color: Theme.of(context).cardColor ,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,
          vertical: 8),
          child: GNav(

            selectedIndex: _selectedIndex,
            backgroundColor: Theme.of(context).cardColor,
            color: Theme.of(context).textSelectionColor ,
            activeColor: Theme.of(context).backgroundColor,
            tabBackgroundColor:  Theme.of(context).textSelectionHandleColor,
            padding: EdgeInsets.all(15),
            gap: 8,
            onTabChange: _onItemTapped,

            tabs:const [
//Color(0XFFBE5869)
              GButton(icon: Icons.add_task,
              iconSize: 30,
              text: "Status Missions",
             ),
              GButton(icon: Icons.home,
                iconSize: 30,
                text: "Home",),
              GButton(icon: Icons.unfold_less,
                iconSize: 30,
                text: "Priority Rating",),



            ],
          ),
        ),
      ),
      body: Center( child: _widgetOptions.elementAt(_selectedIndex),),
    );
  }
}
