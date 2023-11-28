import 'package:flutter/material.dart';
import 'package:login_app/Mobilescreen/signup.dart';
import 'package:login_app/home.dart';
import 'package:login_app/main.dart';
//import 'package:firebase_auth/firebase_auth.dart';

void main() =>
    runApp(new MaterialApp(
      home: SignupScreen(),
    ));

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  late String _enteremail, _enterpass, _entername;

  //FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/login.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Stack(children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: 60.0,
                      ),
                      child: Text(
                        'SignupPage',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(
                          top: MediaQuery
                              .of(context)
                              .size
                              .height * 0.35,
                          left: 35,
                          right: 35,
                        ),
                        child: Form(
                          key: formKey,
                          child: Column(children: [
                            TextFormField(
                              onSaved: (val) => _entername = val!,
                              decoration: InputDecoration(
                                labelText: 'Name',
                                hintText: "Enter name",
                                prefixIcon: Icon(Icons.email_outlined),
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            SizedBox(height: 30.0),
                            TextFormField(
                              validator: (val) =>
                              !val!.contains("@")
                                  ? "Email Id is not Valid"
                                  : null,
                              onSaved: (val) => _enteremail = val!,
                              decoration: InputDecoration(
                                labelText: 'EmailId',
                                hintText: "Enter Email",
                                prefixIcon: Icon(Icons.email_outlined),
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            SizedBox(height: 30.0),
                            TextFormField(
                              onSaved: (val) => _enterpass = val!,
                              validator: (val) =>
                              val!.length < 6
                                  ? "Password length should be Greater than 6"
                                  : null,
                              decoration: InputDecoration(
                                labelText: "Password",
                                hintText: "Enter Password",
                                fillColor: Colors.grey.shade100,
                                prefixIcon: Icon(Icons.lock),
                                filled: true,
                                // hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Row(children: [
                              SizedBox(height: 50.0),
                              SizedBox(width: 60),
                              ElevatedButton(
                                  child: Text("Cancel"),
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      formKey.currentState!.save();
                                      login(context);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) {
                                            return MyApp();
                                          },
                                        ),
                                      );
                                    }
                                  }

                              ),

                              SizedBox(height: 50.0),
                              SizedBox(width: 80),


                              ElevatedButton(
                                  child: Text("Signup"),
                                  onPressed: () {
                                    formKey.currentState!.save();
                                    login(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) {
                                          return MyApp();
                                        },
                                      ),
                                    );
                                  })

                            ]),

                          ]),
                        ),
                    )
                )

    ]))));
  }

  void login(BuildContext context) {
    var alertDailog = AlertDialog(
      title: Text("Login Successful"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDailog;
        });
  }
}
