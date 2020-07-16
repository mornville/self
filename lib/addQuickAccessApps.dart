import 'package:flutter/material.dart';
import 'package:self/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddFavourite extends StatefulWidget {
  @override
  _AddFavouriteState createState() => _AddFavouriteState();
}

class _AddFavouriteState extends State<AddFavourite> {
  List searchResult = List<Widget>();
  bool showTopSearches = false;
  List<String> favouritesAppNames = [];
  List<String> favouritesAppLogo = [];
  List<String> favouritesAppLink = [];
  List allApps = news + sports + social + shopping;
  Future<void> addToFavList(
      String appName, String appLogo, String appLink) async {
    // Adding new app name to favourites
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      if (!favouritesAppNames.contains(appName)) {
        favouritesAppNames.add(appName);
        favouritesAppLogo.add(appLogo);
        favouritesAppLink.add(appLink);
      } else {
        print('Already exists');
      }
      prefs.setStringList('favAppNames', favouritesAppNames);
      prefs.setStringList('favAppLogo', favouritesAppLogo);
      prefs.setStringList('favAppLink', favouritesAppLink);
      getFavList();
    } catch (e) {
      print('Error: ' + (e).toString());
    }
  }

  Future<void> getFavList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      setState(() {
        favouritesAppNames = prefs.getStringList('favAppNames') == null
            ? []
            : prefs.getStringList('favAppNames');
        favouritesAppLogo = prefs.getStringList('favAppLogo') == null
            ? []
            : prefs.getStringList('favAppLogo');
        favouritesAppLink = prefs.getStringList('favAppLink') == null
            ? []
            : prefs.getStringList('favAppLink');
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getFavList();
  }

  TextEditingController searchBarContent = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Add Quick Access Apps'),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  onTap: () {
                    setState(() {
                      showTopSearches = true;
                    });
                  },
                  onChanged: (text) {
                    searchResult = List<Widget>();
                    for (int i = 0; i < allApps.length; i++) {
                      if (text == '') {
                        searchResult = List<Widget>();
                        break;
                      }
                      if (allApps[i][0]
                          .toLowerCase()
                          .contains(text.toLowerCase())) {
                        setState(() {
                          searchResult.add(Padding(
                            padding: EdgeInsets.all(3.0),
                            child: ListTile(
                              onTap: () {
                                addToFavList(allApps[i][0], allApps[i][1],
                                    allApps[i][2]);
                              },
                              title: Text(allApps[i][0]),
                              leading: Image.asset(
                                'assets/appIcons/' + allApps[i][2],
                                height: 30.0,
                              ),
                            ),
                          ));
                        });
                      }
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Search",
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                  ),
                ),
              ),
              (showTopSearches && searchResult.isEmpty)
                  ? Padding(
                      child: Container(
                        color: Colors.black12,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Text(topApps[0][0]),
                              leading: Icon(Icons.history),
                              onTap: () {
                                addToFavList(topApps[0][0], topApps[0][1],
                                    topApps[0][2]);
                              },
                            ),
                            ListTile(
                              title: Text(topApps[1][0]),
                              leading: Icon(Icons.history),
                              onTap: () {
                                addToFavList(topApps[1][0], topApps[1][1],
                                    topApps[1][2]);
                              },
                            ),
                            ListTile(
                              title: Text(topApps[2][0]),
                              leading: Icon(Icons.history),
                              onTap: () {
                                addToFavList(topApps[2][0], topApps[2][1],
                                    topApps[2][2]);
                              },
                            ),
                          ],
                        ),
                      ),
                      padding: EdgeInsets.all(0.0),
                    )
                  : Expanded(
                      child: Container(
                      color: Colors.white,
                      child: ListView.builder(
                          itemCount: searchResult.length,
                          itemBuilder: (BuildContext ctxt, i) {
                            return searchResult[i];
                          }),
                    ))
            ],
          ),
        ));
  }
}
