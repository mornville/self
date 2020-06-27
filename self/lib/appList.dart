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
      'https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png',
      'Facebook, Inc. is an American social media conglomerate corporation based in Menlo Park, California.'
    ],
    [
      'Telegram',
      'https://web.telegram.org/',
      'https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png',
      'Facebook, Inc. is an American social media conglomerate corporation based in Menlo Park, California.',
    ]
  ];
  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(data['category'] == 'social'
            ? 'Social Apps'
            : data['category'] == 'news'
                ? 'News'
                : data['category'] == 'sports' ? 'Sports' : 'Shopping Apps'),
      ),
      body: Wrap(
        children: social
            .map(
              (item) => Card(
                elevation: 0.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ListTile(
                    title: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        item[0],
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    subtitle: Padding(
                      padding:
                          EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
                      child: Text(
                        item[3],
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    leading: Container(
                      child: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Image(
                          image: NetworkImage(item[2]),
                          height: 50.00,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black12, shape: BoxShape.circle),
                    ),
                  ),
                ),
              ),
            )
            .toList()
            .cast<Widget>(),
      ),
    );
  }
}
