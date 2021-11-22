import 'package:flutter/material.dart';
import 'package:newsapp/model/articles.dart';
import 'package:newsapp/ui/detail_page.dart';
import 'package:newsapp/utils/theme.dart';

class NewsHeadLine extends StatelessWidget {
  final Article article;
  NewsHeadLine({required this.article});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //article1 parameter detail page, artcle kanan variable dari newsheadline yang extend dari model
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => DetailPage(article: article,)));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
                image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(article.urlToImage)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.1, 0.9],
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.white.withOpacity(0.1)
                  ]
                )
              ),
            ),
            Positioned(
              bottom: 30,
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  width: 390,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Container(width: 500,
                           child: Text(article.title, style: titleArticleImgSlider.copyWith(fontSize: 12.0))),
                      Text(article.author, style: descArticleImgSlider.copyWith(fontSize: 12)),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
