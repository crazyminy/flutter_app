import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {

  Widget _gridItemBuilder(BuildContext context,int index){
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 8.0,
      //   mainAxisSpacing: 8.0
      // ),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150.0,
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
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
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      scrollDirection: Axis.vertical,
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
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
      scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
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
