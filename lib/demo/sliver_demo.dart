import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[

          SliverAppBar(
            //title:Text('JIEYU'),
            centerTitle: true,
            //pinned: true,
            floating: true,
            expandedHeight: 178.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "made in china".toUpperCase(),
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.w400
                ),
              ),
              background: Image.asset(
                  "assets/view.jpg",
                  fit: BoxFit.cover,
              ),
            ),
          ),

          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverListDemo(),
            ),
          )
          
        ],
      ),
    );
  }
}




class SliverPaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverGridDemo(),
          );
  }
}
class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 0.8
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index){
                return Container(
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
              childCount: posts.length
            ),
          );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index){
          return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Container(
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),),
                  ),

                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].title,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          posts[index].author,
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ),
          );
        },
        childCount: posts.length
      ),
    );
  }
}