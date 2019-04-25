import 'package:flutter/material.dart';
import 'package:flutter_app/framework/f_scafflod.dart';
import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';
import './demo/form_demo.dart';
import './demo/material_component.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffbadc58),
        primarySwatch: Colors.lightGreen,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
      //home: NavigatorDemo(),
      initialRoute: '/mdc',
      routes: {
        '/':(context)=> NavigatorDemo(),
        '/about':(context)=>Page(title: 'About',),
        '/home':(context)=>f_scafflod(),
        '/form':(context)=>FormDemo(),
        '/mdc':(context)=>MaterialComponent(),
      },
    );
  }
}

/*
class Home extends StatelessWidget {

  Widget _listItemBuilder(context,index){
    //return Text(posts[index].title);
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imgUrl),
          SizedBox(height: 16.0,),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.subhead,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('jieyu'),
          //elevation: 40.0,
        ),
        
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        ),
      );
  }
}


class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('data',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.bold,0
        color: Colors.black87
      ),
      ),
    );
  }
}*/
