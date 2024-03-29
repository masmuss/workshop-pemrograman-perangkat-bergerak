import 'package:flutter/material.dart';
import 'package:test/pages/m5/data/api/api_service.dart';
import 'package:test/pages/m5/data/model/article.dart';
import 'package:test/pages/m5/widget/card_article.dart';

class ArticleListPage extends StatefulWidget {
  @override
  _ArticleListPageState createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  late Future<ArticleResult> _article;

  @override
  void initState() {
    super.initState();
    _article = ApiService().topHeadlines();
  }

  Widget _buildList(BuildContext context) {
    return FutureBuilder(
        future: _article,
        builder: (context, AsyncSnapshot<ArticleResult> snapshot) {
          var state = snapshot.connectionState;
          if (state != ConnectionState.done) {
            return Center(child: CircularProgressIndicator());
          } else {
            if (snapshot.hasData) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data?.articles.length,
                itemBuilder: (context, index) {
                  var article = snapshot.data?.articles[index];
                  return CardArticle(article: article!);
                },
              );
            } else if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            } else {
              return Text('');
            }
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: _buildList(context),
    );
  }
}
