import 'package:flutter/material.dart';
import 'package:login_app/Mobilescreen/signup.dart';
import 'package:login_app/home.dart';
//import 'package:firebase_auth/firebase_auth.dart';

//import 'auth.dart';

void main() => runApp(new MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //final bool _isLogin = true;
 //  bool loading = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final formKey =  GlobalKey<FormState>();
 // FirebaseAuth auth = FirebaseAuth.instance;

  late String _email, _pass;

 /* handleSubmit() async {
    if (!formKey.currentState!.validate()) return;
    final email = _emailController.value.text;
    final password = _passwordController.text;


    setState(() => loading = true);*/

   // if (_isLogin) {
    //  await Auth().signInWithEmailAndPassword(email, password);
   // } else {
    //  await Auth().registerWithEmailAndPassword(email, password);
   // }
 //   setState(() => loading = false);
 // }
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
                          top: 45.0,
                        ),
                        child: Text(
                          'Login Page',
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
                        top: MediaQuery.of(context).size.height * 0.4,
                        left: 35,
                        right: 35,
                      ),
                      child: Form(
                          key: formKey,
                          child: Column(children: [
                            TextFormField(
                              controller: _emailController,
                              validator: (val) => !val!.contains("@")
                                  ? "Email Id is not Valid"
                                  : null,
                              onSaved: (val) => _email = val!,
                              decoration: InputDecoration(
                                labelText: 'Email',
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
                              controller: _passwordController,
                              onSaved: (val) => _pass = val!,
                              validator: (val) => val!.length < 6
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
                            SizedBox(height: 35.0),

                            //SizedBox(height: 50.0),
                            SizedBox(width: 120),
                            ElevatedButton(
                              child: Text("Login"),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                               /*  auth.createUserWithEmailAndPassword(
                                  email: _email,
                                   password:_pass);*/

                                  formKey.currentState!.save();
                                  //login(context);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return HomeScreen();
                                      },
                                    ),
                                  );
                                }
                              },
                            ),
                            SizedBox(height: 40.0),
                            Container(
                              padding: EdgeInsets.only(
                                top: 5.0,
                              ),
                              child: Text(
                                'Does not have account?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            SizedBox(width: 80),
                            ElevatedButton(
                                child: Text("Signup"),
                                onPressed: () {
                                  formKey.currentState!.save();
                                  //login(context);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return SignupScreen();
                                      },
                                    ),
                                  );
                                })
                          ])),
                    ),
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

