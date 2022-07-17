import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loginsample99/screens/signup.dart';
import 'package:loginsample99/screens//home.dart';



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);


  @override
  _LoginState createState() => _LoginState();
}


class _LoginState extends State<Login> {

  //form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  //firebase
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller :emailController,
        keyboardType: TextInputType.emailAddress,
        validator: (value)
        {
          if(value!.isEmpty)
            {
              return ("Please Enter Your Email");
            }
          //reg expression for email validation
            if(!RegExp("^[a-zA-Z0-9+-.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value))
              {
                return ("Please enter a valid Email");
              }
            return null;
        },
        onSaved: (value)
        {
          emailController.text=value!;
          //validator:() {},
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20,15,20,15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //Password field
    final passwordfield = TextFormField(
        autofocus: false,
        controller :passwordController,
        obscureText: true,
        validator: (value)
        {
          RegExp regex = new RegExp(r'^.{6,}$');
          if(value!.isEmpty)
            {
              return("Password is required for login");
            }
          if(!regex.hasMatch(value))
            {
              if(!regex.hasMatch(value)){
                return ("Please Enter valid Password(Min. 6 character)");
              }
            }
    },
        onSaved: (value)
        {
          passwordController.text=value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20,15,20,15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //Login button
    final loginButton = Material(
      elevation: 5,
      borderRadius :BorderRadius.circular(30),
      color: Colors.blueAccent,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20,15,20,15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: (){
            signIn(emailController.text, passwordController.text);
          },
          child: Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Image(image: NetworkImage("https://cdn.pixabay.com/photo/2016/06/13/17/30/mail-1454731_960_720.png",
                      scale: 4,
                    )),

                    SizedBox(
                      height: 50,
                      child:Text("Mail Application (UI)",style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontSize: 25.0,
                          fontFamily: 'Indies',
                          fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    SizedBox(height: 15),
                    emailField,
                    SizedBox(height: 25),
                    passwordfield,
                    SizedBox(height: 35),
                    loginButton,
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dont have account?"),
                        GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> signup()));
                        },
                          child: Text(
                              "Signup",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight:FontWeight.bold,
                                fontSize: 15,
                              )),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // login function
  void signIn(String email, String password) async
  {
    if (_formKey.currentState!.validate())
      {
        await _auth.signInWithEmailAndPassword(email: email, password: password)
            .then((eid) => {
              Fluttertoast.showToast(msg: "Login Successfull"),
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homescreen())),
        }).catchError((e)
        {
          Fluttertoast.showToast(msg: e!.message);
        });
      }
  }
}
