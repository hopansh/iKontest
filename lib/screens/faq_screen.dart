import 'package:flutter/material.dart';
class FAQ extends StatelessWidget{
  @override
  Widget build (BuildContext context){

    final appBar= AppBar();
   final scHeight= MediaQuery.of(context).size.height-appBar.preferredSize.height;
    final scWidth= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: scHeight,
        width: scWidth,
        color:Colors.white,
        child: ListView(children: <Widget>[
        qstnAnswer("Q. How can I earn money by using my post?","A. For every hundred likes you get on a post you earn 100 coins. 100 coins = Rs. 1*"),
        qstnAnswer("Q. How can I redeem my earnings through posts?","A.	Minimum redeemable amount is Rs. 100. You can get the amount using paytm, UPI or directly to your bank account."),
        qstnAnswer("Q. Who can take part in the contest?", "A. Photography: Anyone can take part in the contest if you are the photographer of the picture you are submitting.\nModel: Anyone with age greater than 16 can take part."),
        qstnAnswer("Q. How is the winner decided?", "A.	Winner will be decided on the number of likes. If multiple entries have the same number of likes the organisers will decide the winner."),
        qstnAnswer("Q. How many contests can I take part in?", "A. You can take part in as many contests as you want but, you can give only one entry for one contest"),
        qstnAnswer("Q. Can I submit the same pic for multiple contests?", "A.	Yes"),
        qstnAnswer("Q. Is there an entry fee?", "A.	Weekly contests are free but there is a small entry fee for contests over extended periods of time. Longer period contests also have bigger prize money."),
        qstnAnswer("Q. Can I get disqualified or banned?", "A.	Yes, if your post contains nudity, offensive, abusive, hate speech content it will be removed. If you plagiarised your contest entry you will be disqualified. Multiple offenses can get you banned."),
        qstnAnswer("Q. If I win, how will I receive the prize money?", "A. Prize money will be sent to you through paytm or UPI. You can also opt for a gift card."),
        qstnAnswer("Q. What if there is a tie?", "In case of any dispute decision of the ikontest team is final.\n*Subject to change without prior notice"),
        ],),
      )
    );
  }
  qstnAnswer(String question, String answer){
return  Padding(
  padding: const EdgeInsets.all(10.0),
  child:    Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
  
    Text(question,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.left,),
  
   Text(answer,style: TextStyle(fontSize:16),textAlign: TextAlign.left,),
  
  ],),
);
  }
}