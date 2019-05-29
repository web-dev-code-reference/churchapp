import 'package:flutter/material.dart';
import 'package:churchapp/models/post_model.dart';

class ChurchPost extends StatefulWidget {
  @override
  _ChurchPostState createState() => _ChurchPostState();
}

class _ChurchPostState extends State<ChurchPost> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: churchPostModel.length,
      itemBuilder: (context, i) => new Column(
            children: <Widget>[
              new Divider(
                height: 10.0,
              ),
              new ListTile(
                leading: new CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage:
                      new NetworkImage(churchPostModel[i].avatarUrl),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      churchPostModel[i].title,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      churchPostModel[i].message,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
    );
  }
}
