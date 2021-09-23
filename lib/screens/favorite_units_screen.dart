import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:triple/models/partment.dart';
import 'package:triple/widgets/unit_details.dart';

class FavUnitsScreen extends StatefulWidget {
  @override
  _FavUnitsScreenState createState() => _FavUnitsScreenState();
}

class _FavUnitsScreenState extends State<FavUnitsScreen> {
  List<Unit> units = [];
  @override
  void initState() {
    super.initState();
    units = [
      Unit(
          salary: '5000',
          title: 'شقة مميزة في عبدون',
          address: 'عبدون-قرب صيدلية روحى',
          area: '2002',
          image: 'assets/images/b5.jpg',
          itsCAse: 'ايجار',
          rentTime: 'شهري',
          numOfBaths: '4',
          numOfRooms: '3'),
      Unit(
          salary: '700.00',
          title: 'فيلا جميلة في الراية',
          address: 'عبدون-قرب صيدلية روحى',
          area: '802',
          image: 'assets/images/b6.jpg',
          itsCAse: 'للبيع',
          numOfBaths: '4',
          rentTime: '',
          numOfRooms: '5'),
      Unit(
          salary: '5000',
          title: 'مزرعة لللإيجار اليومى',
          address: 'البحر الميت-سويمة',
          area: '4000',
          image: 'assets/images/b7.jpg',
          itsCAse: 'ايجار',
          rentTime: 'شهرى',
          numOfBaths: '4',
          numOfRooms: '3'),
      Unit(
          salary: '500.00',
          title: 'ارض 580 م بدابوق سكن',
          address: 'دابوق-قرب اشارت النسر',
          area: '770',
          image: 'assets/images/b8.jpg',
          itsCAse: 'للبيع',
          rentTime: '',
          numOfBaths: '4',
          numOfRooms: '3'),
      Unit(
          salary: '500.00',
          title: 'ارض 580 م بدابوق سكن',
          address: 'دابوق-قرب اشارت النسر',
          area: '770',
          image: 'assets/images/b5.jpg',
          itsCAse: 'للبيع',
          rentTime: '',
          numOfBaths: '4',
          numOfRooms: '3'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (ctx, index) {
          if (index == 0) {
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('جميع الفئات'),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.apartment_outlined)
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('لللإيجار+للبيع'),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.vpn_key_outlined)
                        ],
                      )
                    ],
                  ),
                ),
                UnitDetailsItem(unit: units[index]),
              ],
            );
          } else
            return UnitDetailsItem(unit: units[index]);
        },
        separatorBuilder: (ctx, index) => Container(
              height: 15,
            ),
        itemCount: units.length);
  }
}
