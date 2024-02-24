import 'package:flutter/material.dart';

void main(){
  runApp(BusinessCard());
}
class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Color(0xFF2B475E),
        appBar: AppBar(backgroundColor: Colors.black,
            centerTitle: true,
            title:Text('Business Card',style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 2),)),
        backgroundColor: Colors.white,
        body: Center(
          child:   Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage('images/Rana.jpg'),
              ),
              SizedBox(height: 7,),
              // Spacer(flex: 1,),
              Text('Rana Eddoaif'
                ,style: TextStyle(fontSize: 30, color: Colors.black, letterSpacing: 2,fontWeight: FontWeight.bold ),),
              SizedBox(height: 3,),
              Text('Flutter Developer',
                style: TextStyle(fontSize: 20,color: Colors.black54,letterSpacing: 1),),
              // SizedBox(height: 7,),
              Divider(thickness: 1,indent: 45,endIndent: 45,color: Colors.black87,height: 10,),
              SelectionArea(child: Container(
                  height: 60,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black,),
                  margin:EdgeInsets.all(20) ,
                  padding: EdgeInsets.all(10),
                  // color: Colors.white,
                  child: Row(
                    children: [
                      Icon(Icons.call,color: Colors.white,),
                      SizedBox(width: 10),
                      Text('(+20) 1146633623',style: TextStyle(fontSize: 17,color: Colors.white,letterSpacing: 1),)
                    ],
                  ))),
              SelectionArea(child:
              Container(
                height: 60,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black,),
                margin:EdgeInsets.symmetric(horizontal: 20) ,
                padding: EdgeInsets.all(10),
                // color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.mail,color: Colors.white),
                    SizedBox(width: 10),
                    Text('ranaessayed104@gmail.com',style: TextStyle(fontSize: 17,color: Colors.white,letterSpacing: 1)),
                  ],
                ) ,)),
            ],

          ),
        ),
      ),
    );
  }
}
