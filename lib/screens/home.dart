import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginsample99/screens/login.dart';
import 'package:loginsample99/model/user.dart';
import 'package:loginsample99/screens/sent.dart';
import 'package:loginsample99/screens/signup.dart';
import 'package:loginsample99/screens/trash.dart';
import 'compose.dart';
import 'inbox.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}
class _homescreenState extends State<homescreen> {

  User? user =FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  get editingController => null;

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value){
      this.loggedInUser=UserModel.fromMap(value.data());
      setState((){});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3D5AFE),
        title: Text("GMAIL"),
        centerTitle: true,
      ),
    floatingActionButton: FloatingActionButton(
    //onPressed: _incrementCounter,
    tooltip: 'Increment',
    onPressed: () { Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const compose()),
    ); },
      child: Icon(
        Icons.article,
        color: Colors.white,
        size: 24.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
    //child: const Icon(Icons.add_sharp),
      //resizeToAvoidBottomInset: true,
    ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            SizedBox(height: 15),

            TextField(
              controller: editingController,
              decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 60.0),
                  labelText: "Search",
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            ),

            //Messanger 1
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,

                          ),
                        ]
                    ),

                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    padding: EdgeInsets.only(left:20,),
                    child:Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Nani", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("12:30",style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: Colors.black54,
                              ),),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "I was very interested while reading the job posting for the position off. I believe that the experience I have strongly match the responsibilities of this position.",

                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,

                            ),
                          ),


                        ]
                    ),

                  ),
                ],
              ),
            ),

                  //Messanger 2
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,

                          ),
                        ]
                    ),

                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    padding: EdgeInsets.only(left:20,),
                    child:Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Nani", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("12:30",style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: Colors.black54,
                              ),),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "I was very interested while reading the job posting for the position off. I believe that the experience I have strongly match the responsibilities of this position.",

                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,

                            ),
                          ),


                        ]
                    ),

                  ),
                ],
              ),
            ),

            // Message 3

            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,

                          ),
                        ]
                    ),

                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    padding: EdgeInsets.only(left:20,),
                    child:Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Nani", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("12:30",style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: Colors.black54,
                              ),),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "I was very interested while reading the job posting for the position off. I believe that the experience I have strongly match the responsibilities of this position.",

                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,

                            ),
                          ),


                        ]
                    ),

                  ),
                ],
              ),
            ),
            // Message 4
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,

                          ),
                        ]
                    ),

                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    padding: EdgeInsets.only(left:20,),
                    child:Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Nani", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("12:30",style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: Colors.black54,
                              ),),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "I was very interested while reading the job posting for the position off. I believe that the experience I have strongly match the responsibilities of this position.",

                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,

                            ),
                          ),


                        ]
                    ),

                  ),
                ],
              ),
            ),
            // Message 5
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,

                          ),
                        ]
                    ),

                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    padding: EdgeInsets.only(left:20,),
                    child:Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Nani", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("12:30",style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: Colors.black54,
                              ),),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "I was very interested while reading the job posting for the position off. I believe that the experience I have strongly match the responsibilities of this position.",

                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,

                            ),
                          ),


                        ]
                    ),

                  ),
                ],
              ),
            ),
            // Message 6
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,

                          ),
                        ]
                    ),

                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    padding: EdgeInsets.only(left:20,),
                    child:Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Nani", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("12:30",style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: Colors.black54,
                              ),),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "I was very interested while reading the job posting for the position off. I believe that the experience I have strongly match the responsibilities of this position.",

                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,

                            ),
                          ),


                        ]
                    ),

                  ),
                ],
              ),
            ),
            // Message 7
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,

                          ),
                        ]
                    ),

                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    padding: EdgeInsets.only(left:20,),
                    child:Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Nani", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("12:30",style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: Colors.black54,
                              ),),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "I was very interested while reading the job posting for the position off. I believe that the experience I have strongly match the responsibilities of this position.",

                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,

                            ),
                          ),


                        ]
                    ),

                  ),
                ],
              ),
            ),
            // Message 8
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,

                          ),
                        ]
                    ),

                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    padding: EdgeInsets.only(left:20,),
                    child:Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Nani", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("12:30",style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: Colors.black54,
                              ),),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "I was very interested while reading the job posting for the position off. I believe that the experience I have strongly match the responsibilities of this position.",

                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,

                            ),
                          ),


                        ]
                    ),

                  ),
                ],
              ),
            ),
            // Message 9
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,

                          ),
                        ]
                    ),

                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    padding: EdgeInsets.only(left:20,),
                    child:Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Nani", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("12:30",style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: Colors.black54,
                              ),),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "I was very interested while reading the job posting for the position off. I believe that the experience I have strongly match the responsibilities of this position.",

                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,

                            ),
                          ),


                        ]
                    ),

                  ),
                ],
              ),
            ),
            // Message 10
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,

                          ),
                        ]
                    ),

                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    padding: EdgeInsets.only(left:20,),
                    child:Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Nani", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("12:30",style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: Colors.black54,
                              ),),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "I was very interested while reading the job posting for the position off. I believe that the experience I have strongly match the responsibilities of this position.",

                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,

                            ),
                          ),


                        ]
                    ),

                  ),
                ],
              ),
            ),
            // Message 11
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,

                          ),
                        ]
                    ),

                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    padding: EdgeInsets.only(left:20,),
                    child:Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Nani", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("12:30",style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: Colors.black54,
                              ),),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "I was very interested while reading the job posting for the position off. I believe that the experience I have strongly match the responsibilities of this position.",

                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,

                            ),
                          ),


                        ]
                    ),

                  ),
                ],
              ),
            ),
            // Message 12
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,

                          ),
                        ]
                    ),

                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    padding: EdgeInsets.only(left:20,),
                    child:Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Nani", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("12:30",style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: Colors.black54,
                              ),),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "I was very interested while reading the job posting for the position off. I believe that the experience I have strongly match the responsibilities of this position.",

                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,

                            ),
                          ),


                        ]
                    ),

                  ),
                ],
              ),
            ),
            // Message 13
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,

                          ),
                        ]
                    ),

                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    padding: EdgeInsets.only(left:20,),
                    child:Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Nani", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("12:30",style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: Colors.black54,
                              ),),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "I was very interested while reading the job posting for the position off. I believe that the experience I have strongly match the responsibilities of this position.",

                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,

                            ),
                          ),


                        ]
                    ),

                  ),
                ],
              ),
            ),



          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            GestureDetector(
                onTap: (){
                  print("Container clicked");
                },
                child: Container(
                  width: 500.0,
                  padding: new EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 25.0),
                  color: Colors.indigoAccent[400],
                  child: new Column(
                      children: [
                        CircleAvatar(
                          radius: 48, // Image radius
                          backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/31/11/54/icon-1633249_960_720.png"),
                        ),
                        SizedBox(height: 20),
                        //Retriving First and Last Name from the Mail
                        Text("${loggedInUser.firstName} ${loggedInUser.secondName}",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),

                        //Retriving Mail from the Base
                        Text("${loggedInUser.email}",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        new Text(" "),
                        //new Text("Hey! Welcome to the Sample Mail Application"),
                      ]
                  ),

                )
            ),

            ListTile(title: Text('Hello Welcome to the mail'),subtitle: Text('Namaste'),),

            ListTile(
                title: const Text('Inbox'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => inbox()),
                  );
                }
            ),
            ListTile(
                title: const Text('Sent'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => sent()),
                    //MaterialPageRoute(builder: (context) => CustomBarWidget()),
                  );
                }
            ),
            ListTile(
                title: const Text('Compose'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => compose()),
                    //MaterialPageRoute(builder: (context) => CustomBarWidget()),
                  );
                }
            ),
            ListTile(
                title: const Text('Trash'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => trash()),
                    //MaterialPageRoute(builder: (context) => CustomBarWidget()),
                  );
                }
            ),
            SizedBox(height: 15),
            ActionChip(label: Text("Logout"), onPressed: () {
              logout(context);
            }),
          ],
        ),
      ),
    );
  }

  Future<void> logout(BuildContext context) async
  {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> Login()));
  }
}