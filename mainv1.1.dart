import 'dart:ui';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Test Main",
    home: MyApp(),
  ));
}

//this is the menu for now.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Draw Your Way',
      home: Scaffold(
        // #docregion centered-text
        body: Center(
            child: Stack(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/pixelCity.jpeg"),
                    fit: BoxFit.cover),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                child: Container(
                  color: Colors.black.withOpacity(0.0),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  'Draw Your Way',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'JosefinSans',
                    fontStyle: FontStyle.italic,
                  ),
                ),

                //change this to ontap
                onPressed: () {
                  print("Something is happening!!!");
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(seconds: 1),
                          child: MainMenu()));
                },
              ),
            ),
          ],
        )),
      ),
      // #enddocregion centered-text
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_label
    debugShowCheckedModeBanner:
    // ignore: unnecessary_statements
    false;
    return Scaffold(
      //will be changed accordingly.
      body: Center(
          child: Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/pixelCity.jpeg"),
                  fit: BoxFit.cover),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
              child: Container(
                color: Colors.black.withOpacity(0.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.3),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(seconds: 1),
                        child: Import()));
              },
              child: Text(
                'Import',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'JosefinSans',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.5, 0.7),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(seconds: 1),
                    child: Settings(),
                  ),
                );
              },
              child: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'JosefinSans',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.6, -0.55),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(seconds: 1),
                      child: Envision()),
                );
              },
              child: Text(
                'Envision',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'JosefinSans',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.6, -0.05),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(seconds: 1),
                      child: DrawPage()),
                );
              },
              child: Text(
                'Draw',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'JosefinSans',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(1.0, 1.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(seconds: 1),
                    child: MyApp(),
                  ),
                );
              },
              child: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'JosefinSans',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(1.0, .9),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(seconds: 1),
                    child: SignInPage(),
                  ),
                );
              },
              child: Text(
                'User',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'JosefinSans',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class Import extends StatefulWidget {
  @override
  _Import createState() => _Import();
}

List<Offset> position = new List.filled(26, Offset(-100, -100));

class _Import extends State<Import> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  String input;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/pixelCity.jpeg"),
                fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(
              color: Colors.black.withOpacity(0.0),
            ),
          ),
        ),
        Align(
          alignment: Alignment(-0.5, -0.5),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: TextFormField(
              controller: myController,
              decoration: InputDecoration(
                labelText: 'Paste Import Link Here',
                labelStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: "JosefinSans",
                    fontSize: 20),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.0, -0.1),
          child: FlatButton(
            onPressed: () {
              //Navigator.pop(context);
              input = myController.text;
              for (int i = 0; i < 26; i++) {
                print(i);
                int index = int.parse(input.substring(0, input.indexOf("/")));
                input = input.substring(input.indexOf(",") + 1, input.length);
                print(input);
                double x = double.parse(input.substring(0, input.indexOf(",")));
                input = input.substring(input.indexOf(",") + 1, input.length);
                double y = double.parse(input.substring(0, input.indexOf(",")));
                input = input.substring(input.indexOf(",") + 1, input.length);
                if ((y >= 150) && (y <= 450)) {
                  position[index] = Offset(x, y);
                }
              }
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  duration: Duration(seconds: 1),
                  child: Display(),
                ),
              );
            },
            child: Text(
              'Process Link',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'JosefinSans',
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(1.0, 1.0),
          child: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'JosefinSans',
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class Display extends StatelessWidget {
  final width = 100.0, height = 100.0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/pixelCity.jpeg"),
                fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(
              color: Colors.black.withOpacity(0.0),
            ),
          ),
        ),
        Positioned(
          top: 210,
          child: Container(
            color: Colors.grey[300].withOpacity(0.53),
            width: 2000,
            height: 300,
          ),
        ),
        Positioned(
          left: position[0].dx,
          top: position[0].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/buildingbrown.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[1].dx,
          top: position[1].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/buildingred.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[2].dx,
          top: position[2].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/doorsideways.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[3].dx,
          top: position[3].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sidewalk.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[4].dx,
          top: position[4].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sidewalkabove.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[5].dx,
          top: position[5].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/wooddoor.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[6].dx,
          top: position[6].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/woodfloor.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[7].dx,
          top: position[7].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/woodfloorsmall.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[8].dx,
          top: position[8].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/stairs.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[9].dx,
          top: position[9].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/arrowup.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[10].dx,
          top: position[10].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/arrowdown.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[11].dx,
          top: position[11].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/arrowleft.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[12].dx,
          top: position[12].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/arrowright.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[13].dx,
          top: position[13].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/buildingbrown.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[14].dx,
          top: position[14].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/buildingred.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[15].dx,
          top: position[15].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/doorsideways.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[16].dx,
          top: position[16].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sidewalk.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[17].dx,
          top: position[17].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sidewalkabove.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[18].dx,
          top: position[18].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/wooddoor.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[19].dx,
          top: position[19].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/woodfloor.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[20].dx,
          top: position[20].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/woodfloorsmall.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[21].dx,
          top: position[21].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/stairs.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[22].dx,
          top: position[22].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/arrowup.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[23].dx,
          top: position[23].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/arrowdown.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[24].dx,
          top: position[24].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/arrowleft.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: position[25].dx,
          top: position[25].dy,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/arrowright.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(1.0, 1.0),
          child: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Back',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'JosefinSans',
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

//user sign up menu
class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormBuilderState> _fbbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Form(
          key: _fbbKey,
          child: Stack(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/pixelCity.jpeg"),
                      fit: BoxFit.cover),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                  child: Container(
                    color: Colors.black.withOpacity(0.0),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.0, -0.05),
                child: SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.0, -.5),
                child: Text("Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'JosefinSans',
                      fontStyle: FontStyle.italic,
                    )),
              ),
              FormBuilder(
                key: _fbbKey,
                autovalidate: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Align(
                      alignment: Alignment(1.0, 1.0),
                      child: FormBuilderTextField(
                        attribute: "Email",
                        validators: [
                          FormBuilderValidators.email(),
                          FormBuilderValidators.required()
                        ],
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'JosefinSans',
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      child: FormBuilderTextField(
                        attribute: "Password",
                        validators: [
                          FormBuilderValidators.minLength(5),
                          FormBuilderValidators.required(),
                        ],
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'JosefinSans',
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment(-0.3, 0.4),
                child: FlatButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, otherwise false.
                    if (_fbbKey.currentState.saveAndValidate()) {
                      print(_fbbKey.currentState.value);
                      var exEmail = "gpb@gatech.edu";
                      var exPassword = "hackgttime";
                      var inEmail = _fbbKey.currentState.value['Email'];
                      var inPassword = _fbbKey.currentState.value['Password'];

                      if (exEmail == inEmail && exPassword == inPassword) {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(seconds: 1),
                                child: Profile()));
                      }
                    }
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'JosefinSans',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.5, 0.4),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(seconds: 1),
                            child: SignUpPage()));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'JosefinSans',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(1.0, 1.0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'JosefinSans',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/pixelCity.jpeg"),
                  fit: BoxFit.cover),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: Container(
                color: Colors.black.withOpacity(0.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, -0.05),
            child: SizedBox(
              width: double.infinity,
              height: 250,
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, -.5),
            child: Text("Sign Up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'JosefinSans',
                  fontStyle: FontStyle.italic,
                )),
          ),
          FormBuilder(
            key: _fbKey,
            autovalidate: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Align(
                  alignment: Alignment(1.0, 1.0),
                  child: FormBuilderTextField(
                    attribute: "name",
                    validators: [
                      FormBuilderValidators.min(3),
                      FormBuilderValidators.required()
                    ],
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'JosefinSans',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                Align(
                  child: FormBuilderTextField(
                    attribute: "password",
                    validators: [
                      FormBuilderValidators.minLength(5),
                      FormBuilderValidators.required(),
                    ],
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'JosefinSans',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                Align(
                  child: FormBuilderTextField(
                    attribute: "email",
                    validators: [
                      FormBuilderValidators.email(),
                      FormBuilderValidators.required()
                    ],
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'JosefinSans',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.4),
            child: FlatButton(
              onPressed: () {
                // Validate returns true if the form is valid, otherwise false.
                if (_fbKey.currentState.saveAndValidate()) {
                  print(_fbKey.currentState.value);
                }
              },
              child: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'JosefinSans',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(1.0, 1.0),
            child: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Back',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'JosefinSans',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class Settings extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.grey.shade300,
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  margin: const EdgeInsets.all(8.0),
                  color: Colors.green,
                  child: ListTile(
                    onTap: () {
                      //open edit profile
                    },
                    title: Text(
                      "John Doe",
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: CircleAvatar(
                      child: ClipOval(
                        child: Image.network(
                          'https://cdn.imgbin.com/2/4/15/imgbin-computer-icons-portable-network-graphics-avatar-icon-design-avatar-DsZ54Du30hTrKfxBG5PbwvzgE.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.lock_outline,
                          color: Colors.green,
                        ),
                        title: Text("Change Password"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change password
                        },
                      ),
                      buildDivider(),
                      ListTile(
                        leading: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.green,
                        ),
                        title: Text("Change Username"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change location
                        },
                      ),
                      buildDivider(),
                      ListTile(
                        leading: Icon(
                          Icons.email_outlined,
                          color: Colors.green,
                        ),
                        title: Text("Change Email"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change location
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  "Notification Settings",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade300,
                  ),
                ),
                SwitchListTile(
                  dense: true,
                  activeColor: Colors.green,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text("Turn On Notifications"),
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  dense: true,
                  activeColor: Colors.green,
                  contentPadding: const EdgeInsets.all(0),
                  value: false,
                  title: Text("Notification Sounds"),
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  dense: true,
                  activeColor: Colors.green,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text("Notification Alerts"),
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  dense: true,
                  activeColor: Colors.green,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text("Notify Me About App Updates"),
                  onChanged: (val) {},
                ),
              ],
            )));
  }

  Container buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}

class DrawingArea {
  Offset point;
  Paint areaPaint;

  DrawingArea({this.point, this.areaPaint});
}

class DrawPage extends StatefulWidget {
  @override
  _DrawPageState createState() => _DrawPageState();
}

class _DrawPageState extends State<DrawPage> {
  List<DrawingArea> points = [];
  Color selectedColor;
  double strokeWidth;

  @override
  void initState() {
    super.initState();
    selectedColor = Colors.black;
    strokeWidth = 2.0;
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    void selectColor() {
      showDialog(
        context: context,
        child: AlertDialog(
          title: const Text('Color Chooser'),
          content: SingleChildScrollView(
            child: BlockPicker(
              pickerColor: selectedColor,
              onColorChanged: (color) {
                this.setState(() {
                  selectedColor = color;
                });
              },
            ),
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Close"))
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromRGBO(138, 35, 135, 1.0),
                  Color.fromRGBO(233, 64, 87, 1.0),
                  Color.fromRGBO(242, 113, 33, 1.0),
                ])),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width * 0.80,
                    height: height * 0.80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                          )
                        ]),
                    child: GestureDetector(
                      onPanDown: (details) {
                        this.setState(() {
                          points.add(DrawingArea(
                              point: details.localPosition,
                              areaPaint: Paint()
                                ..strokeCap = StrokeCap.round
                                ..isAntiAlias = true
                                ..color = selectedColor
                                ..strokeWidth = strokeWidth));
                        });
                      },
                      onPanUpdate: (details) {
                        this.setState(() {
                          points.add(DrawingArea(
                              point: details.localPosition,
                              areaPaint: Paint()
                                ..strokeCap = StrokeCap.round
                                ..isAntiAlias = true
                                ..color = selectedColor
                                ..strokeWidth = strokeWidth));
                        });
                      },
                      onPanEnd: (details) {
                        this.setState(() {
                          points.add(null);
                        });
                      },
                      child: SizedBox.expand(
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          child: CustomPaint(
                            painter: MyCustomPainter(points: points),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: width * 0.80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.color_lens,
                            color: selectedColor,
                          ),
                          onPressed: () {
                            selectColor();
                          }),
                      Expanded(
                        child: Slider(
                          min: 1.0,
                          max: 5.0,
                          label: "Stroke $strokeWidth",
                          activeColor: selectedColor,
                          value: strokeWidth,
                          onChanged: (double value) {
                            this.setState(() {
                              strokeWidth = value;
                            });
                          },
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.layers_clear,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            this.setState(() {
                              points.clear();
                            });
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment(1.0, 1.0),
            child: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'JosefinSans',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  List<DrawingArea> points;

  MyCustomPainter({@required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    Paint background = Paint()..color = Colors.white;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, background);
    canvas.clipRect(rect);

    for (int x = 0; x < points.length - 1; x++) {
      if (points[x] != null && points[x + 1] != null) {
        canvas.drawLine(
            points[x].point, points[x + 1].point, points[x].areaPaint);
      } else if (points[x] != null && points[x + 1] == null) {
        canvas.drawPoints(
            PointMode.points, [points[x].point], points[x].areaPaint);
      }
    }
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) {
    return oldDelegate.points != points;
  }
}

class Envision extends StatefulWidget {
  @override
  _Envision createState() => _Envision();
}

class _Envision extends State<Envision> {
  double width = 100.0, height = 100.0;
  Offset position;
  Offset position2;
  Offset position3;
  Offset position4;
  Offset position5;
  Offset position6;
  Offset position7;
  Offset position8;
  Offset position9;
  Offset position10;
  Offset position11;
  Offset position12;
  Offset position13;
  Offset position14;
  Offset position15;
  Offset position16;
  Offset position17;
  Offset position18;
  Offset position19;
  Offset position20;
  Offset position21;
  Offset position22;
  Offset position23;
  Offset position24;
  Offset position25;
  Offset position26;

  @override
  void initState() {
    super.initState();

    //large buildings to be moved down
    position = Offset(30, height + 420);
    position2 = Offset(300, height + 420);
    position7 = Offset(170, height + 420);

    position3 = Offset(250, height - 80);

    //these are all skinny blocks
    position4 = Offset(30, height - 70);
    position5 = Offset(290, height - 70);
    position8 = Offset(170, height - 70);

    //the leftovers
    position3 = Offset(30, height);
    position6 = Offset(310, height);
    position9 = Offset(170, height);

    //arrows from here on out
    position10 = Offset(0, height + 530);
    position11 = Offset(110, height + 530);
    position12 = Offset(220, height + 530);
    position13 = Offset(310, height + 530);

    //largebuildings to be moved
    position14 = Offset(30, height + 420);
    position15 = Offset(300, height + 420);
    position20 = Offset(170, height + 420);

    //skinny blocks
    position17 = Offset(30, height - 70);
    position18 = Offset(290, height - 70);
    position21 = Offset(170, height - 70);

    //the leftovers
    position16 = Offset(30, height);
    position19 = Offset(310, height);
    position22 = Offset(170, height);
    //arrows from here on out
    position23 = Offset(0, height + 530);
    position24 = Offset(110, height + 530);
    position25 = Offset(220, height + 530);
    position26 = Offset(310, height + 530);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/pixelCity.jpeg"),
                  fit: BoxFit.cover),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.0),
              ),
            ),
          ),
          Positioned(
            top: 210,
            child: Container(
              color: Colors.grey[300].withOpacity(0.53),
              width: 2000,
              height: 300,
            ),
          ),
          Positioned(
            left: position.dx,
            top: position.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/buildingbrown.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/buildingbrown.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position = offset);
              },
            ),
          ),
          Positioned(
            left: position2.dx,
            top: position2.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/buildingred.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/buildingred.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position2 = offset);
              },
            ),
          ),
          Positioned(
            left: position3.dx,
            top: position3.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/doorsideways.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/doorsideways.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position3 = offset);
              },
            ),
          ),
          Positioned(
            left: position4.dx,
            top: position4.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/sidewalk.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/sidewalk.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position4 = offset);
              },
            ),
          ),
          Positioned(
            left: position5.dx,
            top: position5.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/sidewalkabove.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/sidewalkabove.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position5 = offset);
              },
            ),
          ),
          Positioned(
            left: position6.dx,
            top: position6.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/wooddoor.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/wooddoor.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position6 = offset);
              },
            ),
          ),
          Positioned(
            left: position7.dx,
            top: position7.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/woodfloor.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/woodfloor.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position7 = offset);
              },
            ),
          ),
          Positioned(
            left: position8.dx,
            top: position8.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/woodfloorsmall.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/woodfloorsmall.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position8 = offset);
              },
            ),
          ),
          Positioned(
            left: position9.dx,
            top: position9.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/stairs.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/stairs.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position9 = offset);
              },
            ),
          ),
          Positioned(
            left: position10.dx,
            top: position10.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowup.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowup.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position10 = offset);
              },
            ),
          ),
          Positioned(
            left: position11.dx,
            top: position11.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowdown.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowdown.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position11 = offset);
              },
            ),
          ),
          Positioned(
            left: position12.dx,
            top: position12.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowleft.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowleft.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position12 = offset);
              },
            ),
          ),
          Positioned(
            left: position13.dx,
            top: position13.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowright.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowright.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position13 = offset);
              },
            ),
          ),
          /////////repeat///////////////////////////////////////////////////////////////
          Positioned(
            left: position14.dx,
            top: position14.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/buildingbrown.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/buildingbrown.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position14 = offset);
              },
            ),
          ),
          Positioned(
            left: position15.dx,
            top: position15.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/buildingred.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/buildingred.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position15 = offset);
              },
            ),
          ),
          Positioned(
            left: position16.dx,
            top: position16.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/doorsideways.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/doorsideways.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position16 = offset);
              },
            ),
          ),
          Positioned(
            left: position17.dx,
            top: position17.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/sidewalk.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/sidewalk.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position17 = offset);
              },
            ),
          ),
          Positioned(
            left: position18.dx,
            top: position18.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/sidewalkabove.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/sidewalkabove.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position18 = offset);
              },
            ),
          ),
          Positioned(
            left: position19.dx,
            top: position19.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/wooddoor.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/wooddoor.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position19 = offset);
              },
            ),
          ),
          Positioned(
            left: position20.dx,
            top: position20.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/woodfloor.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/woodfloor.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position20 = offset);
              },
            ),
          ),
          Positioned(
            left: position21.dx,
            top: position21.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/woodfloorsmall.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/woodfloorsmall.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position21 = offset);
              },
            ),
          ),
          Positioned(
            left: position22.dx,
            top: position22.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/stairs.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/stairs.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position22 = offset);
              },
            ),
          ),
          Positioned(
            left: position23.dx,
            top: position23.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowup.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowup.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position23 = offset);
              },
            ),
          ),
          Positioned(
            left: position24.dx,
            top: position24.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowdown.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowdown.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position24 = offset);
              },
            ),
          ),
          Positioned(
            left: position25.dx,
            top: position25.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowleft.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowleft.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position25 = offset);
              },
            ),
          ),
          Positioned(
            left: position26.dx,
            top: position26.dy,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowright.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/arrowright.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                width: width,
                height: height,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() => position26 = offset);
              },
            ),
          ),

          Positioned.fill(
              //bottom: 10,
              child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Align(
                      alignment: Alignment(0.0, 1.0),
                      child: Container(
                        child: FlatButton(
                          child: Text(
                            'Copy Share Code',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'JosefinSans',
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          onPressed: () {
                            print("pressed");
                            Clipboard.setData(new ClipboardData(
                                text: "0/," +
                                    position.dx.toString() +
                                    "," +
                                    position.dy.toString() +
                                    ",1/," +
                                    position2.dx.toString() +
                                    "," +
                                    position2.dy.toString() +
                                    ",2/," +
                                    position3.dx.toString() +
                                    "," +
                                    position3.dy.toString() +
                                    ",3/," +
                                    position4.dx.toString() +
                                    "," +
                                    position4.dy.toString() +
                                    ",4/," +
                                    position5.dx.toString() +
                                    "," +
                                    position5.dy.toString() +
                                    ",5/," +
                                    position6.dx.toString() +
                                    "," +
                                    position6.dy.toString() +
                                    ",6/," +
                                    position7.dx.toString() +
                                    "," +
                                    position7.dy.toString() +
                                    ",7/," +
                                    position8.dx.toString() +
                                    "," +
                                    position8.dy.toString() +
                                    ",8/," +
                                    position9.dx.toString() +
                                    "," +
                                    position9.dy.toString() +
                                    ",9/," +
                                    position10.dx.toString() +
                                    "," +
                                    position10.dy.toString() +
                                    ",10/," +
                                    position11.dx.toString() +
                                    "," +
                                    position11.dy.toString() +
                                    ",11/," +
                                    position12.dx.toString() +
                                    "," +
                                    position12.dy.toString() +
                                    ",12/," +
                                    position13.dx.toString() +
                                    "," +
                                    position13.dy.toString() +
                                    ",13/," +
                                    position14.dx.toString() +
                                    "," +
                                    position14.dy.toString() +
                                    ",14/," +
                                    position15.dx.toString() +
                                    "," +
                                    position15.dy.toString() +
                                    ",15/," +
                                    position16.dx.toString() +
                                    "," +
                                    position16.dy.toString() +
                                    ",16/," +
                                    position17.dx.toString() +
                                    "," +
                                    position17.dy.toString() +
                                    ",17/," +
                                    position18.dx.toString() +
                                    "," +
                                    position18.dy.toString() +
                                    ",18/," +
                                    position19.dx.toString() +
                                    "," +
                                    position19.dy.toString() +
                                    ",19/," +
                                    position20.dx.toString() +
                                    "," +
                                    position20.dy.toString() +
                                    ",20/," +
                                    position21.dx.toString() +
                                    "," +
                                    position21.dy.toString() +
                                    ",21/," +
                                    position22.dx.toString() +
                                    "," +
                                    position22.dy.toString() +
                                    ",22/," +
                                    position23.dx.toString() +
                                    "," +
                                    position23.dy.toString() +
                                    ",23/," +
                                    position24.dx.toString() +
                                    "," +
                                    position24.dy.toString() +
                                    ",24/," +
                                    position25.dx.toString() +
                                    "," +
                                    position25.dy.toString() +
                                    ",25/," +
                                    position26.dx.toString() +
                                    "," +
                                    position26.dy.toString() +
                                    ","));
                            return showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  // Retrieve the text the that user has entered by using the
                                  // TextEditingController.
                                  content:
                                      Text("Share code copied to clipboard!"),
                                );
                              },
                            );
                          },
                        ),
                      )))),
          Align(
            alignment: Alignment(1.0, 1.0),
            child: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'JosefinSans',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Profile extends StatelessWidget {
  double _sigmaX = 2.0;
  double _sigmaY = 2.0;
  double _opacity = 0.1;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pixelCity.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
              child: Container(
                color: Colors.black.withOpacity(_opacity),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 250.0,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Welcome, George",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "JosefinSans",
                        fontStyle: FontStyle.italic,
                        fontSize: 35.0,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Recents",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "JosefinSans",
                      fontStyle: FontStyle.italic,
                      fontSize: 28.0,
                    ),
                  ),
                  Card(
                    elevation: 4.0,
                    margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(
                            Icons.location_city_sharp,
                            color: Colors.deepOrangeAccent,
                          ),
                          title: Text("Tech Tower",
                              style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontStyle: FontStyle.italic,
                              )),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change password
                          },
                        ),
                        buildDivider(),
                        ListTile(
                          leading: Icon(
                            Icons.roofing_outlined,
                            color: Colors.deepOrangeAccent,
                          ),
                          title: Text("Treehouse Hideaway",
                              style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontStyle: FontStyle.italic,
                              )),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change location
                          },
                        ),
                        buildDivider(),
                        ListTile(
                          leading: Icon(
                            Icons.location_on_outlined,
                            color: Colors.deepOrangeAccent,
                          ),
                          title: Text("Sideways Cafe",
                              style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontStyle: FontStyle.italic,
                              )),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change location
                          },
                        ),
                        buildDivider(),
                        ListTile(
                          leading: Icon(
                            Icons.train,
                            color: Colors.deepOrangeAccent,
                          ),
                          title: Text("Train Station",
                              style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontStyle: FontStyle.italic,
                              )),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change location
                          },
                        ),
                        buildDivider(),
                        ListTile(
                          leading: Icon(
                            Icons.store_outlined,
                            color: Colors.deepOrangeAccent,
                          ),
                          title: Text("Grocery Store",
                              style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontStyle: FontStyle.italic,
                              )),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change location
                          },
                        ),
                        buildDivider(),
                        ListTile(
                          leading: Icon(
                            Icons.sports_football,
                            color: Colors.deepOrangeAccent,
                          ),
                          title: Text("Bobby Dodd Stadium",
                              style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontStyle: FontStyle.italic,
                              )),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change location
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.8),
            child: Container(
              width: 300.00,
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0),
                ),
                elevation: 0.0,
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.redAccent, Colors.pinkAccent],
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 300.0, maxHeight: 50.0),
                      alignment: Alignment.center,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(seconds: 1),
                              child: Envision(),
                            ),
                          );
                        },
                        child: Text(
                          "Create New",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "JosefinSans",
                            fontStyle: FontStyle.italic,
                            fontSize: 26.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      )),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(1.0, 1.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(seconds: 1),
                    child: MainMenu(),
                  ),
                );
              },
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'JosefinSans',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Container buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}
