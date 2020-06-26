import 'package:flutter/material.dart';

class AppList extends StatefulWidget {
  @override
  _AppListState createState() => _AppListState();
}

class _AppListState extends State<AppList> {
  //appList
  List social = [
    [
      'Facebook',
      'https://www.facebook.com/',
      'https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png'
    ],
    [
      'Telegram',
      'https://web.telegram.org/',
      'https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png'
    ]
  ];
  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(),
        body: Wrap(
          children: social
              .map((item) => Padding(
                  padding: EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: (){
                      print('clicked');
                    },
                                      child: Container(
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Image.network(
                                item[2],
                                height: 40.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(item[0])
                            ],
                          ),
                        ),
                        
                      ),
                    ),
                  )))
              .toList()
              .cast<Widget>(),
        ));
  }
}
