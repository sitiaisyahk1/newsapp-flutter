import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/model/articles.dart';
import 'package:newsapp/model/bookmark.dart';
import 'package:newsapp/ui/detail_page.dart';
import 'package:newsapp/utils/theme.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;

class NewsItem extends StatefulWidget {
  final Article article;
  const NewsItem({Key? key, required this.article}) : super(key: key);

  @override
  _NewsItemState createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  bool isBookmark = false;
  @override
  Widget build(BuildContext context) {
    final bookmark = Provider.of<BookmarkModel>(context, listen: false);
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => DetailPage(article: widget.article,))
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: edgeDetail),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.network(widget.article.urlToImage,
              width: 80,
              height: 80,
              fit: BoxFit.cover),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                width: 210,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(widget.article.title,
                      maxLines: 2,
                      overflow:
                      TextOverflow.ellipsis,
                    style: titleArticle.copyWith(fontSize: 16)),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_today_outlined, size: 12),
                            SizedBox(width: 3),
                            Container(
                              width: 70,
                              child: Text(
                                timeUntil(DateTime.parse(widget.article.publishedAt)),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: authorDateArticle.copyWith(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.person_outline, size: 12),
                            SizedBox(width: 3),
                            Container(
                              width: 70,
                              child: Text(
                                widget.article.author,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: authorDateArticle.copyWith(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            IconButton(
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Berhasil Ditambahakan"),
                    duration: Duration(milliseconds: 1000)
                    ),
                  );
                  bookmark.addToBookmark(widget.article);
                  setState(() {
                    isBookmark = ! isBookmark;
                  });
                },
                icon: Icon(
                  isBookmark ? Icons.bookmark : Icons.bookmark_border,
                  color: Colors.lightBlue,
                ))
          ],
        ),
      ),
    );
  }

  String timeUntil(DateTime parse){
    return timeago.format(parse, allowFromNow: true, locale: 'id');
  }
}
