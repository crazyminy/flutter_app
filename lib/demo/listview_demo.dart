import 'package:flutter/material.dart';
import 'package:flutter_app/demo/post_show.dart';
import '../model/post.dart';

class ListViewDemoNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _listItemBuilder,
      itemCount: posts.length,
    );
  }

  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child:AspectRatio(
                  aspectRatio: 16/9,
                  child:  Image.network(
                      posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                )
              ),
              SizedBox(height: 16.0,),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.subtitle,
              ),
              SizedBox(height: 16.0,)
            ],
          ),
          Positioned.fill(
              child:Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.white.withOpacity(0.3),
                  highlightColor: Colors.white.withOpacity(0.1),
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>PostShow(posts[index]))
                    );
                  },
                ),
              )
          )
        ],
      ),
    );
  }
}
