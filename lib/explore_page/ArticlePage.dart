import 'package:flutter/material.dart';
import 'package:indeoendent_tourist_app_main/homePage.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key,
    required this.title,
    required this.body
  });

  final String title;
  final Padding body;

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: articlePageAppBar(context),
        body: Container(
            margin: const EdgeInsets.all(12),
            child: widget.body
        ),
      ),
    );
  }

  AppBar articlePageAppBar(BuildContext context){
    return AppBar(
      backgroundColor: const Color(0xFFF6F1F1),
      elevation: 0,
      leading: BackButton(
        color: Colors.black,
        onPressed: () => Navigator.of(context).pop()
      ),
      title: Text(
        widget.title,
        style: const TextStyle(
            color: Colors.black
        ),
      ),
    );
  }
}
