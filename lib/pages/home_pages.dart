import 'package:flutter/material.dart';
import 'package:homepedia_app/models/space.dart';
import 'package:homepedia_app/theme.dart';
import 'package:homepedia_app/widgets/city_card.dart';
import 'package:homepedia_app/widgets/space_card.dart';
import 'package:homepedia_app/models/city.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
          child: ListView(
            children: [
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
                       price: 52,
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
                       price: 11,
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
                       price: 20,
                       city: 'Ittaewon',
                       country: 'BANDUNG',
                       rating: 4,
                     ),
                   ),
                ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
