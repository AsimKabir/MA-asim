import 'package:flutter/material.dart';
import 'package:ma_asim/screens/findADoctorScreen.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (ListView(
      children: [
        appointmentReminderCard(),
        iWantToBookCard(),
        searchForDoctors(),
        previousDoctor(),
        corporateInsurance(),
        popularHospitals(),
      ],
    ));
  }
}

appointmentReminderCard() {
  return (Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // height: 200,
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black, width: 1.0, style: BorderStyle.solid),
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
                children: const [
                  Text(
                    "Appointment Reminder",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "Visited 2 months ago",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              /////////////   2st ROW   ///////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/cat3.png'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
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
                    child: const Text("Book Now"),
                  )
                ],
              ),
              /////////////   3rd ROW   ///////////////////////////
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.amberAccent,
                      width: 1.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amberAccent,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [Icon(Icons.lightbulb), Text("Pro tip")],
                    ),
                    const Text("Rs. 100 may be sent to your app wallet")
                  ],
                ),
              )
            ],
          ),
        ),
      )));
}

iWantToBookCard() {
  return (Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black, width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            //////////    Row 1st //////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "I want to book",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: const [
                    Icon(Icons.wallet_giftcard),
                    Text("Rs.4830"),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                )
              ],
            ),
            //////////////////////    Row 2nd    //////////////////////
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
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white70,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Doctor \nAppointment"),
                        Image(
                            width: 100,
                            // height: 180,
                            image: NetworkImage(
                                'https://www.freepnglogos.com/uploads/doctor-png/doctor-bulk-billing-doctors-chapel-hill-health-care-medical-3.png'))
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
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white70,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Video \nConsutation"),
                        Image(
                          width: 100,
                          // height: 180,
                          image: NetworkImage(
                              'https://www.freepnglogos.com/uploads/doctor-png/doctor-bulk-billing-doctors-chapel-hill-health-care-medical-3.png'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            //////////    Row 3rd    //////////////////////
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Image.asset(
                'assets/labtestBanner.png',
                // height: 200,
                scale: 2.5,
                // color: Color.fromARGB(255, 15, 147, 59),
                // opacity: const AlwaysStoppedAnimation<double>(0.5),
              ),
            ),
          ]),
        ),
      )));
}

searchForDoctors() {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: (Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black, width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white70,
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("I'm looking for"),
              Row(
                children: [
                  Column(
                    children: [
                       CircleAvatar(
                        backgroundImage: AssetImage('assets/images/cat3.png'),
                      ),
                      Text("Gynecolog")
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                       CircleAvatar(
                        backgroundImage: AssetImage('assets/images/cat3.png'),
                      ),
                      Text("Gynecolog")
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                       CircleAvatar(
                        backgroundImage: AssetImage('assets/images/cat3.png'),
                      ),
                      Text("Gynecolog")
                    ],
                  )
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  minimumSize:  Size.fromHeight(30), // NEW
                ),
                onPressed: () {
                  // Navigator.pushNamed(context, "/findADoctorScreen");
                },
                child: Text(
                  'All Specalization',
                  style: TextStyle(fontSize: 12, color: Colors.deepPurple),
                ),
              ),
            ],
          ),
        ))),
  );
}

previousDoctor() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: (Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black, width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Consult with previous Doctor"),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70,
                    ),
                    width: 150,
                    height: 70,
                    // color: Colors.lightGreen,
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/cat3.png'),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Dr. Asim "),
                                Text("Radiology, ..."),
                                Text("A day Ago")
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70,
                    ),
                    width: 150,
                    height: 70,
                    // color: Colors.lightGreen,
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/cat3.png'),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Dr. Asim "),
                                Text("Radiology, ..."),
                                Text("A day Ago")
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ))),
  );
}

corporateInsurance() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: (Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.black, width: 1.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white70,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Have Corporate Insurance"),
            Text("Free Unlimited Video Consultations"),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amberAccent,
                minimumSize: const Size.fromHeight(30), // NEW
              ),
              onPressed: () {},
              child: const Text(
                'Connect Now',
                style: TextStyle(fontSize: 12, color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    )),
  );
}

popularHospitals() {
  return (Container(
    decoration: BoxDecoration(
      border:
          Border.all(color: Colors.black, width: 1.0, style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(20),
      color: Colors.white70,
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Popular Hospitals"),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/cat3.png'),
                  ),
                  Text("Hameed Latif")
                ],
              ),
            ),
          )
        ],
      ),
    ),
  ));
}
