import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {

  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){
     return Container(
        margin: EdgeInsets.all(8.0),
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'item $index',
          style: TextStyle(fontSize: 18.0,color: Colors.pink[700]),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: <Widget>[

      ],
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author,
              )
            ],
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}


class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: PageController(
          initialPage: 0,
          keepPage: false,
          viewportFraction: 1.0
      ),
      scrollDirection: Axis.vertical,
      reverse: true,
      children: <Widget>[
        Container(
          color: Colors.yellow[100],
          alignment:Alignment(0.0, 0.0),
          child: Text(
            '由减one',
            style: TextStyle(fontSize: 32.0,color: Colors.indigo[500]),
          ),
        ),
        Container(
          color: Colors.pink[100],
          alignment:Alignment(0.0, 0.0),
          child: Text(
            '由减two',
            style: TextStyle(fontSize: 32.0,color: Colors.indigo[500]),
          ),
        )
      ],
    );
  }
}
