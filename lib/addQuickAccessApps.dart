import 'package:flutter/material.dart';
import 'package:self/appList.dart' as appList;

class AddFavourite extends StatefulWidget {
  @override
  _AddFavouriteState createState() => _AddFavouriteState();
}

class _AddFavouriteState extends State<AddFavourite> {
  bool showTopSearches = false;
  var topSearches = List<Widget>();
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
            child: SingleChildScrollView(
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
                      decoration: InputDecoration(
                        hintText: "Search",
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.black12),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 16.0),
                      ),
                    ),
                  ),
                  showTopSearches
                      ? Padding(
                          child: Container(height: 100, color: Colors.black12),
                          padding: EdgeInsets.all(0.0),
                        )
                      : Container(),
                ],
              ),
            )));
  }
}
