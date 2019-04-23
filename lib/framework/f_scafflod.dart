import 'package:flutter/material.dart';
import 'package:flutter_app/demo/basic_demo.dart';
import 'package:flutter_app/model/products.dart';
import '../demo/layoutDemo.dart';
import '../demo/view_demo.dart';
import '../demo/sliver_demo.dart';

class f_scafflod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'navigation',
              onPressed: ()=>Scaffold.of(context).openDrawer()
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: ()=>debugPrint('search button is pressed'),
            )
          ],
          title: Text('JieYu'),
          centerTitle: true,
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black26,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.local_pizza)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            MyListview(),
            BasicDemo(),
            LayoutDemo(),
            SliverDemo(),
          ],
        ),
        drawer: MyDraw(),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }
}

class MyDraw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'crazyminy',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('crazyminy4131@gmail.com'),
            currentAccountPicture: CircleAvatar(
              //child: Image.asset('assets/bear.jpg'),
              backgroundImage: AssetImage('assets/bear.jpg'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[800],
                image: DecorationImage(
                  image: AssetImage('assets/view.jpg'),
                  fit: BoxFit.cover,
                  //colorFilter: ColorFilter.mode(Colors.yellow.withOpacity(0.1),BlendMode.srcATop)
                )),
          ),
          ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Favourite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Settings',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  void _onTapHandler(int index) {
    setState(() {
      this._currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _onTapHandler,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore), title: Text('explore')),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), title: Text('history')),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('list')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('person')),
        ]);
  }
}
