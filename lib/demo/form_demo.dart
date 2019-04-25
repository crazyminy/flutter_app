import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Theme(
          data: ThemeData(
            primaryColor: Colors.black54,
          ),
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RegisterForm()
              ],
            ),
          )
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "userName"
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: "password"
            ),
          ),
          SizedBox(height: 30.0,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('register',style: TextStyle(color: Colors.white),),
              elevation: 8.0,
              onPressed: (){},
            ),
          )
        ],
      ),
    );
  }
}



class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Theme.of(context).primaryColor,
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    //textEditingController.text = 'hi';
    textEditingController.addListener(
        (){
          debugPrint('input:'+textEditingController.text);
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return TextField(

      controller: textEditingController,

     /* onChanged: (value){
        debugPrint("input:"+value);
      },*/
      onSubmitted: (value){
        debugPrint("submit:"+value);
      },
      decoration: InputDecoration(
        icon:Icon(Icons.subject),
        labelText: "title",
        hintText: "Enter the post title。",
        //border: InputBorder.none,
        //border: OutlineInputBorder()
        filled: true,
      ),
    );
  }
}




