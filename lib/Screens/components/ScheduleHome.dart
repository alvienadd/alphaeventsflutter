import 'package:flutter/material.dart';
import './TabSchedule/NewOrders.dart' as firstpage;
import './TabSchedule/Process.dart' as secondpage;
import './TabSchedule/History.dart' as thirdpage;

class ScheduleHome extends StatefulWidget{
  @override
  _ScheduleHome createState()=>new _ScheduleHome();
}

class _ScheduleHome extends State<ScheduleHome> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller=new TabController(vsync:this,length:3);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:new AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          bottom:PreferredSize(
            preferredSize: Size.fromHeight(1.0),
              child: new TabBar(
              controller: controller,
              indicatorWeight: 3,
              indicatorColor: Color(int.parse('#BB163A'.replaceAll('#', '0xff'))),
              labelColor:  Color(int.parse('#BB163A'.replaceAll('#', '0xff'))),
              tabs:<Widget>[
                new Tab(child: Text('New Orders')),
                new Tab(child: Text('Process')),
                new Tab(child: Text('History')),
              ]
            ),
          )
        ),
        body:new TabBarView(
          controller:controller,
          children:<Widget>[
            new firstpage.NewOrders(),
            new secondpage.Process(),
            new thirdpage.History(),
          ]
        )
    );
  }
}