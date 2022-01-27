import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Search",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final foods = [
    "Bakery and Bread",
    "Meat and Seafood",
    "Pasta and Rice",
    "Sauces",
    "Oils",
    "Salad Dressings",
    "Condiments",
    "Cereals and Breakfast Food",
    "Soups and Canned Goods",
    "Frozen Foods",
    "Dairy",
    "Cheese",
    "Eggs",
    "Snacks",
    "Crackers",
    "Produce",
    "Drinks",
  ];

  final recentFoods = [
    "Dairy",
    "Cheese",
    "Eggs",
    "Snacks",
    "Crackers",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for appBar
    return [
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, "");
          } else {
            query = "";
            showSuggestions(context);
          }
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //leading icon on the left of the appbar
    return IconButton(
      onPressed: () {
        close(context, "null");
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // show some result based on the selections.
    return Center(
      child: Container(
        child: Text(
          "Item not Availabel !",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Text(query),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something.....
    final suggestionList = query.isEmpty
        ? recentFoods
        : foods.where((p) {
            p = p.toLowerCase();
            final queryLower = query.toLowerCase();
            return p.startsWith(queryLower);
          }).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        final suggestions = suggestionList[index];
        return ListTile(
          onTap: () {
            // show result
            query = suggestions;
            showResults(context);
            // navigate to next page..
          },
          leading: Icon(Icons.arrow_upward),
          title: RichText(
            text: TextSpan(
                text: suggestions.substring(0, query.length),
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: suggestions.substring(query.length),
                    style: TextStyle(color: Colors.grey),
                  ),
                ]),
          ),
        );
      },
    );
  }
}
