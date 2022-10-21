import 'package:flutter/material.dart';

class findADoctorScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return (
    Scaffold(
      appBar: AppBar(
        title: Text("Find a Doctor"),
      ),
      body: Column(
        children: [
          algoliaSearchBar()
        ],
      ),
    )
    );
  }
}

algoliaSearchBar(){
  return(
  Container(
    child: Center(
        child : Container(
            width: 320,
            padding: EdgeInsets.all(10.0),
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                hintText: 'Enter Your Email Here...',
                prefixIcon: Icon(Icons.email),
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white70,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
              ),)
        )),
  )
  );
}