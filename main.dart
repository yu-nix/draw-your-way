import 'dart:ui';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

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
                Navigator.pop(context);
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

class Import extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Import",
      home: Scaffold(
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
                  filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                  child: Container(
                    color: Colors.black.withOpacity(0.0),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.5, -0.5),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Paste Import Link Here',
                    labelStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: "JosefinSans",
                        fontSize: 20),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.0, -0.3),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
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
            ],
          ),
        ),
      ),
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
                  filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
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
                      var exEmail = "gpb@gmail.com";
                      var exPassword = "hackgttime";
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
              filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
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

  @override
  void initState() {
    super.initState();
    // position = Offset(width/5, height + 20);
    // position2 = Offset(2*width/5, height + 20);
    // position3 = Offset(3*width/5, height + 20);
    // position4 = Offset(4*width/5, height + 20);
    // position5 = Offset(width/5, height + 20);
    // position6 = Offset(2*width/5, height + 100);
    // position7 = Offset(3*width/5, height + 100);
    // position8 = Offset(4*width/5, height + 100);
    // position9 = Offset(4*width/5, height + 100);
    position = Offset(30, height - 20);
    position2 = Offset(140, height - 20);
    position3 = Offset(250, height - 20);
    position4 = Offset(360, height - 20);
    position5 = Offset(470, height - 20);
    position6 = Offset(30, height + 60);
    position7 = Offset(140, height + 60);
    position8 = Offset(250, height + 60);
    position9 = Offset(360, height + 60);

    position10 = Offset(30, height - 20);
    position11 = Offset(140, height - 20);
    position12 = Offset(250, height - 20);
    position13 = Offset(360, height - 20);
    position14 = Offset(470, height - 20);
    position15 = Offset(30, height + 60);
    position16 = Offset(140, height + 60);
    position17 = Offset(250, height + 60);
    position18 = Offset(360, height + 60);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: position.dx,
            top: position.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/buildingbrown.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/buildingbrown.jpg'),
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
            top: position2.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/buildingred.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/buildingred.jpg'),
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
            top: position3.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/doorsideways.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/doorsideways.jpg'),
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
            top: position4.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/sidewalk.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/sidewalk.jpg'),
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
            top: position5.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/sidewalkabove.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/sidewalkabove.jpg'),
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
            top: position6.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/wooddoor.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/wooddoor.jpg'),
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
            top: position7.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/woodfloor.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/woodfloor.jpg'),
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
            top: position8.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/woodfloorlarge.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/woodfloorlarge.jpg'),
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
            top: position9.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/woodstairs.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/woodstairs.jpg'),
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
          /////////repeat///////////////////////////////////////////////////////////////
          Positioned(
            left: position10.dx,
            top: position10.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/buildingbrown.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/buildingbrown.jpg'),
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
            top: position11.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/buildingred.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/buildingred.jpg'),
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
            top: position12.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/doorsideways.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/doorsideways.jpg'),
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
            top: position13.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/sidewalk.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/sidewalk.jpg'),
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
          Positioned(
            left: position14.dx,
            top: position14.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/sidewalkabove.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/sidewalkabove.jpg'),
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
            top: position15.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/wooddoor.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/wooddoor.jpg'),
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
            top: position16.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/woodfloor.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/woodfloor.jpg'),
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
            top: position17.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/woodfloorlarge.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/woodfloorlarge.jpg'),
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
            top: position18.dy - height + 45,
            child: Draggable(
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/woodstairs.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              feedback: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/woodstairs.jpg'),
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
          Center(
            child: SelectableText("Data: " +
                position.dx.toString() +
                "," +
                position.dy.toString() +
                "," +
                position2.dx.toString() +
                "," +
                position2.dy.toString() +
                "," +
                position3.dx.toString() +
                "," +
                position3.dy.toString() +
                "," +
                position4.dx.toString() +
                "," +
                position4.dy.toString() +
                "," +
                position5.dx.toString() +
                "," +
                position5.dy.toString() +
                "," +
                position6.dx.toString() +
                "," +
                position6.dy.toString() +
                "," +
                position7.dx.toString() +
                "," +
                position7.dy.toString() +
                "," +
                position8.dx.toString() +
                "," +
                position8.dy.toString() +
                "," +
                position9.dx.toString() +
                "," +
                position9.dy.toString() +
                "," +
                position10.dx.toString() +
                "," +
                position10.dy.toString() +
                "," +
                position11.dx.toString() +
                "," +
                position11.dy.toString() +
                "," +
                position12.dx.toString() +
                "," +
                position12.dy.toString() +
                "," +
                position13.dx.toString() +
                "," +
                position13.dy.toString() +
                "," +
                position14.dx.toString() +
                "," +
                position14.dy.toString() +
                "," +
                position15.dx.toString() +
                "," +
                position15.dy.toString() +
                "," +
                position16.dx.toString() +
                "," +
                position16.dy.toString() +
                "," +
                position17.dx.toString() +
                "," +
                position17.dy.toString() +
                "," +
                position18.dx.toString() +
                "," +
                position18.dy.toString() +
                ","),
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
    );
  }
}
