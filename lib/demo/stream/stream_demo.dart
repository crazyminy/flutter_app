import 'package:flutter/material.dart';
import 'dart:async';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: StreamControllerDemo(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  //声明一个_streamSubscription 作为订阅的接收者
  StreamSubscription _streamSubscription;


  @override
  void initState() {
    super.initState();
    //输出 创建stream log
    debugPrint('create stream');
    //通过Stream.fromFuture 构造一个字符串的流
    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    //输出 开始监听
    debugPrint('start listening stream');
    //监听多个事件
    _streamSubscription = _streamDemo.listen(onData,onError:onError,onDone:onDone);
    debugPrint('Initialize completed.');
  }

  void onData(String data){
    debugPrint('$data');
  }

  void onError(error){
    debugPrint('error:$error');
  }

  void onDone(){
    debugPrint('Done');
  }

  _pauseStream(){
    debugPrint('pauseStream');
    _streamSubscription.pause();
  }

  _resumeStream(){
    debugPrint('resumeStream');
    _streamSubscription.resume();
  }

  _cancelStream(){
    debugPrint('cancelStream');
    _streamSubscription.cancel();
  }

  Future<String> fetchData() async{
    await Future.delayed(Duration(seconds: 6));
    //throw 'something happened';
    return 'hello~';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Pause'),
              onPressed: _pauseStream,
            ),
            FlatButton(
              child: Text('Resume'),
              onPressed: _resumeStream,
            ),
            FlatButton(
              child: Text('cancel'),
              onPressed: _cancelStream,
            ),
          ],
        ),
      ),
    );
  }
}

//use controller
class StreamControllerDemo extends StatefulWidget {
  @override
  _StreamControllerDemoState createState() => _StreamControllerDemoState();
}

class _StreamControllerDemoState extends State<StreamControllerDemo> {
  StreamController<String> _streamDemo;
  StreamSubscription _streamSubscription;
  StreamSink<String> _streamSink;



  @override
  void initState() {
    super.initState();
    
    print('Create a Stream');
    _streamDemo = StreamController.broadcast();
    _streamSink = _streamDemo.sink;

    print('start listen stream');
    _streamSubscription = _streamDemo.stream.listen(onData,onError: onError,onDone: onDone);

    _streamDemo.stream.listen(onData2,onError: onError,onDone: onDone);
    
    print('Initialize complete');
    
  }

  @override
  void dispose() {
    _streamDemo.close();
    super.dispose();
  }
  void onData(String val){

    print('onData:'+val);
  }

  void onData2(String val){
    print('onData2:'+val);
  }

  void onError(error){
    print('onError'+error);
  }

  void onDone(){
    print('onDone');
  }

  void _pauseStream(){
    print('_pauseStream');
    _streamSubscription.pause();
  }

  void _resumeStream(){
    print('_resumeStream');
    _streamSubscription.resume();
  }

  void _cancelStream(){
    print('_cancelStream');
    _streamSubscription.cancel();
  }

  void _addDataToStream()async{
    print('_addDataToStream');
    String data = await fetchData();
    _streamSink.add(data);
  }

  Future<String> fetchData() async{
    await Future.delayed(Duration(seconds: 2));
    //throw 'something happened';
    return 'hello~';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StreamBuilder(
              stream: _streamDemo.stream,
              builder: (context,snapshot){
                return Text('${snapshot.data}');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: _pauseStream,
                  child: Text('pause'),
                ),
                FlatButton(
                  onPressed: _resumeStream,
                  child: Text('resume'),
                ),
                FlatButton(
                  onPressed: _cancelStream,
                  child: Text('cancel'),
                ),
                FlatButton(
                  onPressed: _addDataToStream,
                  child: Text('addData'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
