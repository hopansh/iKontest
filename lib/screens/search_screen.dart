import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}
Future<List<Post>> search(String search) async {
  await Future.delayed(Duration(seconds: 2));
  return List.generate(search.length, (int index) {
    return Post(
      "Title : $search $index",
      "Description :$search $index",
    );
  });
}
class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Search"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.tune),
              onPressed: () {
                print("Filter");
              }),
          IconButton(
              icon: Icon(Icons.sort),
              onPressed: () {
                print("Sort");
              }),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SearchBar(
            onSearch: search,
  onItemFound: (Post post, int index) {
    return ListTile(
      title: Text(post.title),
      subtitle: Text(post.description),
    );
  },
          ),
        ),
      ),
    );
  }
}
