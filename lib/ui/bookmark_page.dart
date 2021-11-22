import 'package:flutter/material.dart';
import 'package:newsapp/model/bookmark.dart';
import 'package:newsapp/widgets/news_item.dart';
import 'package:provider/provider.dart';

class BookMarkPage extends StatefulWidget {
  const BookMarkPage({Key? key}) : super(key: key);

  @override
  _BookMarkPageState createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: _BookmarkList(),
                  ))
            ],
          )),
    );
  }

}

class _BookmarkList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var bookmark = context.watch<BookmarkModel>();
    return ListView.builder(
        itemCount: bookmark.articles.length,
        itemBuilder: (context, index) {
          return NewsItem(article: bookmark.articles[index]);
        });
  }
}