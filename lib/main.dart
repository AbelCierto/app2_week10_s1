import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Second App Week10',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Stack(
        fit: StackFit.expand,
        children:<Widget> [
         Image(
           image: AssetImage('lib/assets/background.jpeg'),
           fit: BoxFit.cover,
           color: Colors.black54,
            colorBlendMode: BlendMode.darken,
         ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: 100.0,
              ),
              Form(
                  child: Theme(
                    data: ThemeData(
                      //brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                      inputDecorationTheme: InputDecorationTheme(
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Enter Email',
                              filled: true,
                              fillColor: Colors.grey[200],
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Enter Password',
                              filled: true,
                              fillColor: Colors.grey[200],
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          MaterialButton(
                            height: 40.0,
                            minWidth: 100.0,
                            color: Colors.teal,
                            textColor: Colors.white,
                            onPressed: () {},
                            splashColor: Colors.redAccent,
                            child: Text('Login'),
                          ),
                        ],
                      ),
                    ),
                  ),
              ),
            ],

          ),
        ],
      ),
    );
  }
}



