import 'package:flutter/material.dart';
import 'package:homepedia_app/models/space.dart';
import 'package:homepedia_app/models/tips.dart';
import 'package:homepedia_app/theme.dart';
import 'package:homepedia_app/widgets/bottom_navbar.dart';
import 'package:homepedia_app/widgets/city_card.dart';
import 'package:homepedia_app/widgets/space_card.dart';
import 'package:homepedia_app/models/city.dart';
import 'package:homepedia_app/widgets/tips_card.dart';


class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE: TITLE/HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text('Mencari properti idaman',
                  style: greyTextStyle.copyWith(fontSize: 16)),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: POPULAR CITIES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text('Popular Cities',
                  style: regularTextStyle.copyWith(fontSize: 16)),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/images/popular1.png',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 2,
                      name: 'Bandung',
                      imageUrl: 'assets/images/popular2.png',
                      isPopular: true,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Tanggerang',
                      imageUrl: 'assets/images/popular3.png',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),

                  CityCard(
                    City(
                      id: 1,
                      name: 'Cianjur',
                      imageUrl: 'assets/images/popular1.png',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),

                  CityCard(
                    City(
                      id: 2,
                      name: 'Bekasi',
                      imageUrl: 'assets/images/popular2.png',
                      isPopular: true,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //NOTE: RECOMMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Property',
                  style: regularTextStyle.copyWith(
                    fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
               children: [
                 SpaceCard(
                   Space(
                     id: 1,
                     name: 'Cinere Resort',
                     imageUrl: 'assets/images/property1.png',
                     price: 1500000,
                     status: 'Rent',
                     city: 'Gandul',
                     country: 'DEPOK',
                     rating: 5,
                   ),
                 ),
                 SizedBox(
                   height: 27,
                   ),
                 SpaceCard(Space(
                     id: 2,
                     name: 'Kemang Residence',
                     imageUrl: 'assets/images/property2.png',
                     price: 0,
                     status: 'Sell',
                     city: 'Seattle',
                     country: 'South Jakarta',
                     rating: 3,
                   ),),
                 SizedBox(
                   height: 27,
                   ),
                 SpaceCard(
                   Space(
                     id: 3,
                     name: 'Pasteur Building',
                     imageUrl: 'assets/images/property3.png',
                     price: 3500000,
                     status: 'Rent',
                     city: 'Ittaewon',
                     country: 'BANDUNG',
                     rating: 4,
                   ),
                 ),
              ],
              ),
            ),
            SizedBox(
            height: 30,
            ),
            // NOTE: TIPS & GUIDANCE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                  style: regularTextStyle.copyWith(
                    fontSize: 16),
              ),
            ),
            SizedBox(
            height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'House Agent',
                      imageUrl: 'assets/images/icon.png',
                      updatedAt: '20 Apr',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                      id: 2,
                      title: 'Home Advisor',
                      imageUrl: 'assets/images/icon2.png',
                      updatedAt: '9 Jan',
                    ),
                  ),
            ],
            ),
            ),
            SizedBox(
             height: 50 + edge,
            ),
            
          ],
        ),
      ),
      floatingActionButton: Container(
                height: 65,
                width: MediaQuery.of(context).size.width - (2 * edge),
                margin: EdgeInsets.symmetric(
                  horizontal: edge,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffF6F7F8),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavbar(
                      imageUrl: 'assets/images/Icon_home.png',
                      isActive: true,
                    ),
                    BottomNavbar(
                      imageUrl: 'assets/images/Icon_mail.png',
                      isActive: false,
                    ),
                    BottomNavbar(
                      imageUrl: 'assets/images/Icon_card.png',
                      isActive: false,
                    ),
                    BottomNavbar(
                      imageUrl: 'assets/images/Icon_love.png',
                      isActive: false,
                    ),
                ],
                ),
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
