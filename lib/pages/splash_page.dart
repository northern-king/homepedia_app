import 'package:flutter/material.dart';
import 'package:homepedia_app/pages/home_pages.dart';
import 'package:homepedia_app/theme.dart';

class SplashPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
        children: [
          Align(alignment: Alignment.bottomCenter,
          child: Image.asset('assets/images/splash_screen.png'),
          ),
          Padding(
          padding: EdgeInsets.only(
            top: 50,
            left: 30, ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Your Trusted\nProperty Agent',
              style: blackTextStyle.copyWith(fontSize: 30),
            ),
            SizedBox(
              height: 10,
              ),
              Text(
                'Buy, Sell, and Rent',
                style: greyTextStyle.copyWith(
                  fontSize: 20
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width:210,
                height:50,
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                        ),
                    );
                  },
                  color: greenColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                  child: Text(
                    'Explore Now',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          )
        ),
        ],
      ),
      ),
    );
  }
}