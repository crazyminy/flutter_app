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
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      )
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  final registerFormKey = GlobalKey<FormState>();
  String userName,password;
  bool autoValidate = false;

  void submitRegisterForm(){
    if(registerFormKey.currentState.validate()){
      registerFormKey.currentState.save();

      debugPrint('userName:$userName');
      debugPrint('password:$password');
      
      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text('registering...')),
      );
    }else{
      setState(() {
        autoValidate = true;
      });

    }


  }

  String validatorUserName(value){
    if(value.isEmpty){
      return 'userName is required';
    }
    return null;
  }

  String validatorPassword(value ){
    if(value.isEmpty){
      return 'password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "userName"
            ),
            onSaved: (value){
              userName = value;
            },
            validator: validatorUserName,
            autovalidate: autoValidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: "password"
            ),
            onSaved: (value){
              password = value;
            },
            validator: validatorPassword,
            autovalidate: autoValidate,
          ),
          SizedBox(height: 30.0,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('register',style: TextStyle(color: Colors.white),),
              elevation: 8.0,
              onPressed: submitRegisterForm,
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




