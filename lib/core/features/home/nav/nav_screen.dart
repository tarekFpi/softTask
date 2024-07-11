import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:softbd_task/core/features/home/date_screen.dart';
import 'package:softbd_task/core/features/home/home_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {

  int currentPageIndex = 0;

  List<Widget> pages =   [
    HomeScreen(),
    DateSelectScreen(),
  ];

    String title ="Flutter Task";

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(

        title: SizedBox(
          // width: 300,
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                },
                icon: Image.asset('assets/images/menu.png',),
              ),

              const SizedBox(
                width: 12,
              ),
              currentPageIndex!=1? Image.asset('assets/images/demo.png',):Text(""),

              const SizedBox(
                width: 12,
              ),

              Text(
                "$title",
                style: textTheme.bodyMedium?.copyWith(
                    color: Colors.black, fontSize: 16,fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/notification.png',),
          ),
        ],
      ),
        body: pages[currentPageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        items: <Widget>[

          Image.asset('assets/images/bhome.png',width: 24,height: 24,),
          Image.asset('assets/images/can.png',width: 24,height: 24),

        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueGrey,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {

          setState(() {
            currentPageIndex = index;

            if(currentPageIndex==1){
              title="সময়রেখা";
            }
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
