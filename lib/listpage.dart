
import 'package:flutter/material.dart';

import 'model.dart';


class ListPage extends StatefulWidget {
  final List<Sekolah> sekolah;
  const ListPage({Key? key, required this.sekolah}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(padding: EdgeInsets.only(left: 10),
              child: Text('Sekolah Dasar' )),
          //CarouselWidget(articleList: widget.article),
          //TabBarMenu(article: widget.article)
        ],
      ),
    );
  }
}
