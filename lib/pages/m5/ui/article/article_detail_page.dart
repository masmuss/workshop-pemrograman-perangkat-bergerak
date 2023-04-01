import 'package:flutter/material.dart';
import 'package:test/pages/m5/data/model/article.dart';
import 'package:test/pages/m5/ui/article/article_web_view.dart';

class ArticleDetailPage extends StatelessWidget {
  static const routeName = '/article_detail';

  final Article article;

  const ArticleDetailPage(this.article);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: article.urlToImage!,
              child: Image.network(article.urlToImage!),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.description ?? '',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Divider(color: Colors.grey),
                  Text(
                    article.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Divider(color: Colors.grey),
                  Text(
                    'Date :  ${article.publishedAt}',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Author :  ${article.author}',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Divider(color: Colors.grey),
                  Text(
                    article.content ?? '',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    child: const Text('Read More'),
                    onPressed: () => Navigator.pushNamed(
                      context,
                      ArticleWebView.routeName,
                      arguments: article.url,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}