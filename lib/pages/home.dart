import 'package:flutter/material.dart';
import 'package:churchapp/pages/posts.dart';
import 'package:churchapp/pages/radio.dart';
import 'package:churchapp/pages/videos.dart';
// import 'package:churchapp/pages/posts.dart';

class ChurchHome extends StatefulWidget {
  @override
  _ChurchHomeState createState() => _ChurchHomeState();
}

class _ChurchHomeState extends State<ChurchHome> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override

  void initState(){
    super.initState();
    _tabController=new TabController(vsync:this, initialIndex: 0, length:3);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        flexibleSpace: Container(
            decoration: BoxDecoration(
            border: new Border.all(color: Colors.lightBlueAccent),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 20.0, // has the effect of softening the shadow
                spreadRadius: 5.0, // has the effect of extending the shadow
                offset: Offset(
                  5.0, // horizontal, move right 10
                  5.0, // vertical, move down 10
                ),
              )
            ],
              borderRadius: new BorderRadius.only(
                bottomLeft: const Radius.circular(20.0),
                bottomRight: const Radius.circular(20.0),
                // topLeft: const Radius.circular(40.0),
                ),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.purpleAccent,
                  Colors.blueAccent,
                ],
              ),
            ),
          ),
        // backgroundColor: colors.,
        title: new Text("MyChurch"),
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.yellowAccent,
          tabs: <Widget>[
            new Tab(text: "Post"),
            new Tab(text: "Radio"),
            new Tab(text: "Videos"),
          ],
        ),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.dashboard),),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new ChurchPost(),
          new ChurchRadio(),
          new ChurchVideos(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
