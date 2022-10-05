import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return(
    ListView(
      children: [
        appointmentReminderCard(),
        iWantToBookCard(),
        searchForDoctors(),
      ],
    )
    );
  }
}

appointmentReminderCard(){
  return(
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          // height: 200,
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black,
                width: 1.0,
                style: BorderStyle.solid
            ),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white70,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                /////////////   1st ROW   ///////////////////////
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Appointment Reminder", style: TextStyle(fontSize: 12),),
                    Text("Visited 2 months ago", style: TextStyle(fontSize: 12),),
                  ],
                ),
                /////////////   2st ROW   ///////////////////////////
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/cat3.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Prof. Asim"),
                            Text("Rs. 0 "),
                          ],
                        )
                      ],
                    ),
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text("Book Now"),
                    )
                  ],
                ),
                /////////////   3rd ROW   ///////////////////////////
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.amberAccent,
                        width: 1.0,
                        style: BorderStyle.solid
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amberAccent,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.lightbulb),
                          Text("Pro tip")
                        ],
                      ),
                      Text("Rs. 100 may be sent to your app wallet")
                    ],
                  ),
                )
              ],
            ),
          ),
        ))
      );
}

iWantToBookCard(){
  return(
  Padding(
    padding: EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.black,
            width: 1.0,
            style: BorderStyle.solid
        ),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white70,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            children:[
              //////////    Row 1st //////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("I want to book", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                  Row(
                    children: [
                      Icon(Icons.wallet_giftcard),
                      Text("Rs.4830"),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  )
                ],
              ),
              //////////    Row 2nd    //////////////////////
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // alignment: AlignmentDirectional.bottomStart,
                      width: 150,
                      height: 180,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white70,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Doctor \nAppointment"),
                          Image(
                              width: 100,
                              // height: 180,
                              image: NetworkImage('https://www.freepnglogos.com/uploads/doctor-png/doctor-bulk-billing-doctors-chapel-hill-health-care-medical-3.png'))
                        ],
                      ),
                    ),
                    Container(
                      // alignment: AlignmentDirectional.bottomStart,
                      width: 150,
                      height: 180,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white70,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Video \nConsutation"),
                          Image(
                              width: 100,
                              // height: 180,
                              image: NetworkImage('https://www.freepnglogos.com/uploads/doctor-png/doctor-bulk-billing-doctors-chapel-hill-health-care-medical-3.png'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //////////    Row 3rd    //////////////////////
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Image.asset('assets/labtestBanner.png',
                  // height: 200,
                  scale: 2.5,
                  // color: Color.fromARGB(255, 15, 147, 59),
                  // opacity: const AlwaysStoppedAnimation<double>(0.5),
                ),
              ),
            ]
        ),
      ),
    )
  )
  );
}


searchForDoctors(){
  return(
  Container(
    child: Text('hello'),
  )
  );
}
