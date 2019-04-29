import 'package:flutter/material.dart';

class StepDemo extends StatefulWidget {
  @override
  _StepDemoState createState() => _StepDemoState();
}

class _StepDemoState extends State<StepDemo> {

  int _currentStep = 0;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('_WidgetDemo'),),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(primaryColor: Colors.black),
              child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (int value){
                  setState(() {
                   _currentStep = value; 
                  });
                },
                onStepContinue: (){
                  setState(() {
                   _currentStep<2?_currentStep++ : _currentStep=0; 
                  });
                },
                onStepCancel: (){
                  setState(() {
                    _currentStep>0? _currentStep-- : _currentStep=0;
                  });
                },
                steps: [
                  Step(
                    title: Text('Login'),
                    subtitle: Text('Login first'),
                    content: Text('Id nisi minim aute Lorem anim ad minim veniam qui velit sint.'),
                    isActive: _currentStep==0,
                  ),
                  Step(
                    title: Text('Choose Plan'),
                    subtitle: Text('Choose your plan'),
                    content: Text('Excepteur est irure magna ex dolor dolore reprehenderit laborum nulla sint consequat.'),
                    isActive: _currentStep==1,
                  ),
                   Step(
                    title: Text('Confirm payment'),
                    subtitle: Text('Confirm your payment method'),
                    content: Text('Ad magna proident irure deserunt occaecat deserunt aute pariatur.'),
                    isActive: _currentStep==2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}