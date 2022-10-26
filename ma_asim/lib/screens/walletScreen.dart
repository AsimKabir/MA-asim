import 'package:flutter/material.dart';

class walletScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return(
        Scaffold(
          appBar: AppBar(
            title: Text('Wallet Screen'),
          ),
          body: Container(
            color: Color(0xefeff5),
              child: ListView(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                              offset: Offset(0.0, 0.55)
                          )
                        ],
                        color: Colors.white
                    ),
                    height: 60,
                    // color: Colors.white70,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Current balance", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                        Text("Rs. 4929", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22))
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xf1eeee),
                    padding: EdgeInsets.fromLTRB(16,50,0,0),
                      child: Text("Transaction history", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
                  ),
                  transactionHistoryCard(),
                  Container(
                    color: Colors.white70,
                    padding: EdgeInsets.fromLTRB(14,0,14,0),
                    child: Divider(),
                  ),
                  transactionHistoryCard(),
                  Container(
                    color: Colors.white70,
                    padding: EdgeInsets.fromLTRB(14,0,14,0),
                    child: Divider(),
                  ),
                  transactionHistoryCard(),
                  Container(
                    color: Colors.white70,
                    padding: EdgeInsets.fromLTRB(14,0,14,0),
                    child: Divider(),
                  ),
                  transactionHistoryCard(),
                  Container(
                    color: Colors.white70,
                    padding: EdgeInsets.fromLTRB(14,0,14,0),
                    child: Divider(),
                  ),
                  transactionHistoryCard(),
                  Container(
                    color: Colors.white70,
                    padding: EdgeInsets.fromLTRB(14,0,14,0),
                    child: Divider(),
                  ),
                  transactionHistoryCard(),
                  Container(
                    color: Colors.white70,
                    padding: EdgeInsets.fromLTRB(14,0,14,0),
                    child: Divider(),
                  ),
                  transactionHistoryCard(),
                  Container(
                    color: Colors.white70,
                    padding: EdgeInsets.fromLTRB(14,0,14,0),
                    child: Divider(),
                  ),
                  transactionHistoryCard(),
                  Container(
                    color: Colors.white70,
                    padding: EdgeInsets.fromLTRB(14,0,14,0),
                    child: Divider(),
                  ),
                  transactionHistoryCard(),
                  Container(
                    color: Colors.white70,
                    padding: EdgeInsets.fromLTRB(14,0,14,0),
                    child: Divider(),
                  ),
                  transactionHistoryCard(),
                  Container(
                    color: Colors.white70,
                    padding: EdgeInsets.fromLTRB(14,0,14,0),
                    child: Divider(),
                  ),
                  transactionHistoryCard(),
                  Container(
                    color: Colors.white70,
                    padding: EdgeInsets.fromLTRB(14,0,14,0),
                    child: Divider(),
                  ),
                  transactionHistoryCard(),
                  Container(
                    color: Colors.white70,
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.center,
                    child: Text("Your wallet balance is only usable in oladoc platform"),
                  )
                  //////////////////////////////////////////////////////////////////////
                ],
              )
          )
        )
    );
  }
}

transactionHistoryCard(){
  return(
      Container(
        height: 80,
        color: Colors.white70,
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Octorber 19, 2022", style: TextStyle(fontSize: 16)),
            Row(
              children: [
                Icon(Icons.ad_units),
                Text("Fee Refud", style: TextStyle( fontSize: 16)),
              ],
            ),
            Text("+1000", style: TextStyle( fontSize: 16, color: Colors.lightGreen)),
          ],
        ),
      )
  );
}