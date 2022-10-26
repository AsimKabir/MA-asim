import 'package:flutter/material.dart';

class editProfileScreen extends StatelessWidget {
  String gender = "male";

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text('Edit Profile Screen'),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 26),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Enter your name',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              Text(
                "Email",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 26),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Enter your email',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              Text(
                "Age in years",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 26),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Age',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              Text(
                "Gender",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              // Row(
              //   children: [
              //     RadioListTile(
              //       title: Text("Male"),
              //       value: "male",
              //       groupValue: gender,
              //       onChanged: (value){
              //         setState(() {
              //           gender = value.toString();
              //         });
              //       },
              //     ),
              //   ],
              // )
            ],
          ),
        )));
  }
}

// profileCard(){
//   return(
//   );
// }
