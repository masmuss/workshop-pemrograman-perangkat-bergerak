import 'package:flutter/material.dart';
import 'package:test/pages/m5/data/model/article.dart';
import 'package:test/pages/m5/ui/article/article_detail_page.dart';
import 'package:test/pages/m5/ui/article/article_list_page.dart';
import 'package:test/pages/m5/ui/article/article_web_view.dart';

void main() {
  runApp(const MyAppArticle());
}

class MyAppArticle extends StatelessWidget {
  const MyAppArticle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ArticleListPage(),
        '/article_web': (context) => ArticleWebView(
            url: ModalRoute.of(context)?.settings.arguments as String),
        '/article_detail': (context) => ArticleDetailPage(
            ModalRoute.of(context)?.settings.arguments as Article),
      },
    );
  }
}
