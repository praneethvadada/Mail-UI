import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loginsample99/model/user.dart';
import 'package:loginsample99/screens/home.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}


class _signupState extends State<signup> {
  final _auth = FirebaseAuth.instance;

  //our form key
  final _formKey = GlobalKey<FormState>();

  //editing Controller
  final firstNameEditingController = new TextEditingController();
  final secondNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();



  @override
  Widget build(BuildContext context) {

    //first name field
    final firstNameField = TextFormField(
        autofocus: false,
        controller :firstNameEditingController,
        keyboardType: TextInputType.name,
        validator: (value)
        {
          RegExp regex = new RegExp(r'^.{3,}$');
          if(value!.isEmpty)
          {
            return("Name Connot be empty");
          }
          if(!regex.hasMatch(value))
          {
            if(!regex.hasMatch(value)){
              return ("Please Enter name (Min. 3 character)");
            }
            return null;
          }
        },
        onSaved: (value)
        {
          firstNameEditingController.text=value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20,15,20,15),
          hintText: "First Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //second name field
    final secondNameField = TextFormField(
        autofocus: false,
        controller :secondNameEditingController,
        keyboardType: TextInputType.name,
        validator: (value)
        {
          RegExp regex = new RegExp(r'^.{3,}$');
          if(value!.isEmpty)
          {
            return("Second Name Cannot be Empty");
          }
          return null;
        },
        onSaved: (value)
        {
          secondNameEditingController.text=value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20,15,20,15),
          hintText: "Second Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //Email name field
    final emailfield = TextFormField(
        autofocus: false,
        controller :emailEditingController,
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
          emailEditingController.text=value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20,15,20,15),
          hintText: "E- Mail",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //password name field
    final passwordField = TextFormField(
        autofocus: false,
        controller :passwordEditingController,
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
          passwordEditingController.text=value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20,15,20,15),
          hintText: "New Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //confirm password name field
    final confirmPasswordField = TextFormField(
        autofocus: false,
        controller :confirmPasswordEditingController,
        obscureText: true,
        validator: (value)
        {
          if(confirmPasswordEditingController.text != passwordEditingController.text)
            {
              return "Password not matched";
            }
          return null;
        },
        onSaved: (value)
        {
          confirmPasswordEditingController.text=value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20,15,20,15),
          hintText: "Confirm Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //signup button
    final signupButton = Material(
      elevation: 5,
      borderRadius :BorderRadius.circular(30),
      color: Colors.blueAccent,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20,15,20,15),
          minWidth: MediaQuery.of(context).size.width,

          onPressed: (){
            signUp(emailEditingController.text, passwordEditingController.text);
          },
          child: Text(
            "Signup",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blueAccent), onPressed: () {
          Navigator.of(context).pop();
        },
        ),
      ),
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

                    Text(
                      "May I know who you are 😁",
                      style:TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),

                    SizedBox(height: 10,),
                    Text(
                      "This is actually a sample mail account!\n   But you need to SignUp and SignIn",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    /*
                    Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 15,
                    ),
                    ActionChip(label: Text("Logout"), onPressed: (){}),*/
                    SizedBox(height: 15),
                    firstNameField,
                    SizedBox(height: 15),
                    secondNameField,
                    SizedBox(height: 15),
                    emailfield,
                    SizedBox(height: 15),
                    passwordField,
                    SizedBox(height: 15),
                    confirmPasswordField,
                    SizedBox(height: 50),

                    signupButton,
                    SizedBox(height: 15,)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signUp(String email, String password) async
  {
    if (_formKey.currentState!.validate())
      {
        await _auth.createUserWithEmailAndPassword(email: email, password: password)
          .then((value) =>{ postDetailsToFirestore()})
          .catchError((e)
        {
            Fluttertoast.showToast(msg: e!.message);
        });
    }
  }


  postDetailsToFirestore() async {

    //calling our firestore
    //callign our user model
    //sending these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();


    //writing all the values
    userModel.email=user!.email;
    userModel.uid=user.uid;
    userModel.firstName=firstNameEditingController.text;
    userModel.secondName=secondNameEditingController.text;

    await firebaseFirestore
      .collection("users")
      .doc(user.uid)
      .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created sucessfully");
    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => homescreen()),
        (route) => false);
  }
}