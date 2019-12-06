import 'package:flutter/material.dart';
import 'package:sarele_eat/rutas/ruta_home.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
   static const nombreRuta = "/inicio";
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

      @override
      Widget build(BuildContext context) {

        final emailField = TextField(
          obscureText: false,
          //style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 7.0, 20.0, 15.0),
              hintText: "Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
        final passwordField = TextField(
          obscureText: true,
          //style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 7.0, 10.0, 15.0),
              hintText: "Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
        final loginButon = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.blue,
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => RutaHome()),
              );
            },
            child: Text("Login",
                textAlign: TextAlign.center,
                //style: style.copyWith(
                   // color: Colors.black, fontWeight: FontWeight.bold)
                   ),
          ),
        );

        return Scaffold(
          body: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 25.0,),
                    SizedBox(
                      height: 130.0,
                      child: Image.asset(
                        "imagenes/restaurante.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 25.0,),
                   
                    emailField,
                    SizedBox(height: 15.0),
                    passwordField,
                     SizedBox(
                      height: 25.0,
                    ),
                    loginButon,
                    SizedBox(height: 150.0),
                  
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }