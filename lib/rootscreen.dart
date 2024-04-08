import 'package:flutter/material.dart';

class Rootscreen extends StatefulWidget {
  const Rootscreen({super.key});

  @override
  State<Rootscreen> createState() => _RootscreenState();
}

class _RootscreenState extends State<Rootscreen> with
TickerProviderStateMixin{
  TabController? controller;

  @override
  void initState(){
    super.initState();

    controller = TabController(length: 2, vsync: this);
    controller!.addListener(tabListner);
  }

  tabListner(){
    setState(() {});
  }

  @override
  void dispose() {
    controller!.removeListener(tabListner);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children:
          renderChildren(),
      ),
      bottomNavigationBar: renderBottomNavigation(),
    );
  }

  List<Widget> renderChildren() {
    return [
      Container(
        child: Center(
          child: Text("Tab1"
          ,style: TextStyle(
                color: Colors.white
              )
          ),
        ),
      ),
      Container(
        child: Center(
          child: Text("Tab2"
              ,style: TextStyle(
                  color: Colors.white
              )
          ),
        ),
      ),
    ];
  }

  BottomNavigationBar renderBottomNavigation() {
    return BottomNavigationBar(
        currentIndex: controller!.index,
        onTap: (int index){
          setState(() {
            controller!.animateTo(index);
          });
        },
        items: [
      BottomNavigationBarItem(icon: Icon(
        Icons.note//edgesensor_high_outlined
      ),
      label:"주사위"),

      BottomNavigationBarItem(icon: Icon(
        Icons.settings
      ),
        label: "설정"
      )

    ]);
  }
}
