import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RxDartDemo'),),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {

  PublishSubject<String> _textFieldSubject;

  @override
  void initState() {
    super.initState();
  
    _textFieldSubject = PublishSubject<String>();
    
    _textFieldSubject.listen((val)=>print(val));

    _textFieldSubject.close();
    
    //Observable<String> _observable = Observable(Stream.fromIterable(['hello','nihao']));
    
    //Observable<String> _observable = Observable.fromFuture(Future.value('hello~'));
    
    //Observable<String> _observable = Observable.just('hello');
    
    //Observable<String> _observable = Observable.periodic(Duration(seconds: 3),(x)=>x.toString());

    //_observable.listen(print);


    /*PublishSubject<String> _subject = PublishSubject<String>();

    _subject.listen((val)=>print('listen1:$val'));
    _subject.add("hello");
    _subject.listen((val)=>print('listen2:$val'));
    _subject.add("hello1");
    _subject.close();*/

    /// BehaviorSubject is, by default, a broadcast (aka hot) controller, in order
    /// to fulfill the Rx Subject contract. This means the Subject's `stream` can
    /// be listened to multiple times.
    /*BehaviorSubject<String> _subject = BehaviorSubject<String>();
    _subject.listen((val)=>print('listen1:$val'));
    _subject.add("hello");
    _subject.listen((val)=>print('listen2:$val'));
    _subject.add("hello1");
    _subject.close();*/


    /// ReplaySubject is, by default, a broadcast (aka hot) controller, in order
    /// to fulfill the Rx Subject contract. This means the Subject's `stream` can
    /// be listened to multiple times.
    /*ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 2);
    _subject.add("hello");
    _subject.add("hello1");
    _subject.add("hola");
    _subject.listen((val)=>print('listen1:$val'));
    _subject.listen((val)=>print('listen2:${val.toUpperCase()}'));
    _subject.close();*/

  }

  @override
  void dispose() {
    super.dispose();
    _textFieldSubject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: TextField(
        onSubmitted: (val){
          _textFieldSubject.add('input:$val');
        },
        decoration: InputDecoration(
          labelText: 'Title',
          filled: true,
        ),
      ),
    );
  }
}
