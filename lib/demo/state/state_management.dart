import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class StateManagement extends StatefulWidget {
  @override
  _StateManagementState createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
  
  int _count = 0;

  void _increaseCount(){
    setState(() {
     _count++; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
        count: _count,
        increaseCount: _increaseCount,
        child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagement'),
          elevation: 12.0,
        ),
        body: CounterWrapper(),
        floatingActionButton: FloatingActionButton(
          onPressed:_increaseCount,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class CounterWrapper extends StatelessWidget {
  // final int count ;
  // final VoidCallback increaseCount;
  //CounterWrapper(this.count,this.increaseCount);
  CounterWrapper();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget {
  // final int count ;
  // final VoidCallback increaseCount;
  // Counter(this.count,this.increaseCount);
  Counter();
  @override
  Widget build(BuildContext context) {
    final int count = CounterProvider.of(context).count;
    final increaseCount = CounterProvider.of(context).increaseCount;
    return ActionChip(
      label: Text('$count'),
      onPressed:increaseCount,
    );
  }
}

class CounterProvider extends InheritedWidget{
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  CounterProvider({
    this.count,
    this.increaseCount,
    this.child
  }):super(child:child);

  static CounterProvider of(BuildContext context)=>
    context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}