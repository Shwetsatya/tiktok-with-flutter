import 'package:creative/get_server_data/search_for_data.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MySearchBar extends StatelessWidget {
  static String searchText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              textAlign: TextAlign.start,
              textInputAction: TextInputAction.search,
              onChanged: (input) {
                searchText = input;
              },
              onEditingComplete: () {
                print(searchText);
                FocusScope.of(context).unfocus();
                if (searchText != null && searchText != '') {
                  SearchData(searchString: searchText).getResults();
                } else {
                  Fluttertoast.showToast(
                    msg: "Please Enter Something",
                    toastLength: Toast.LENGTH_LONG,
                  );
                }
              },
              decoration: InputDecoration(
                icon: Icon(Icons.search),
                hintText: 'Enter Username',
                border: const OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
