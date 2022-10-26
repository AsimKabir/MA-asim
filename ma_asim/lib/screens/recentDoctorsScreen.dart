import 'package:flutter/material.dart';

class recentDoctorsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return(
        Scaffold(
          appBar: AppBar(
            title: Text('Recent Doctors Screen'),
          ),
          body:ListView(
            children: List.generate(15,(index){
              return recentDoctorCard();
            }),
          ),
        )
    );
  }
}

recentDoctorCard(){
  return(
      Card(
        color: Colors.amber[50],
        margin: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        shadowColor: Colors.pink[50],
        child: Container(
          // margin: const EdgeInsets.all(10),
          child: ListTile(
            leading: Container(
              width: 60,
              height: 60,
              child: CircleAvatar(
                // radius: 60, // Image radius
                backgroundImage: NetworkImage('https://googleflutter.com/sample_image.jpg'),
              ),
            ),
            title: Text("Dr. Asim Kabir"),
            subtitle: Text("Child specialist, pediatration... "),
          ),
        ),
      )
  );
}