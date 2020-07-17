import 'package:flutter/material.dart';
import 'package:self/data.dart';

class AppList extends StatefulWidget {
  @override
  _AppListState createState() => _AppListState();
}

class _AppListState extends State<AppList> {
  //appList

  List temp;
  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context).settings.arguments;
    if (data['category'] == 'social') {
      temp = social;
    } else if (data['category'] == 'news') {
      temp = news;
    } else if (data['category'] == 'food') {
      temp = food;
    } else if (data['category'] == 'shopping') {
      temp = shopping;
    } else if (data['category'] == 'sports') {
      temp = sports;
    } else {
      temp = [[], [], [], [], []];
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(data['category'] == 'social'
            ? 'Social Apps'
            : data['category'] == 'news'
                ? 'News'
                : data['category'] == 'food'
                    ? 'Online Delivery'
                    : data['category'] == 'sports'
                        ? 'Sports'
                        : 'Shopping Apps'),
      ),
      body: ListView.builder(
        itemCount: temp.length,
        itemBuilder: (context, i) {
          return Card(
            elevation: 0.0,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/appScreen', arguments: {
                    "appName": temp[i][0].toString(),
                    "appUrl": temp[i][1].toString(),
                    "appLogo": temp[i][2].toString(),
                  });
                },
                title: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    temp[i][0].toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
                  child: Text(
                    temp[i][3],
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
                      image: AssetImage('assets/appIcons/' + temp[i][2]),
                      height: 50.00,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
