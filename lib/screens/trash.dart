import 'package:flutter/material.dart';

class trash extends StatelessWidget {
  const trash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trash"),
        centerTitle: true,
      ),
      body: Column(
        children: [
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
                    backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/06/15/16/16/man-1459246_960_720.png"),
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

          // Messenger 2
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




        ],
      ),
    );
  }
}
