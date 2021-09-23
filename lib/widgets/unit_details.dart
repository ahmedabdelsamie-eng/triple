import 'package:flutter/material.dart';
import 'package:triple/models/partment.dart';

class UnitDetailsItem extends StatelessWidget {
  final Unit unit;
  UnitDetailsItem({this.unit});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      color: Colors.white,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 10, end: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      unit.title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            unit.salary,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(unit.rentTime),
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(unit.itsCAse),
                      SizedBox(
                        width: 2,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        height: 7,
                        width: 7,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'حمامات',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                unit.numOfBaths,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.bathtub, size: 15)
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'منذ ثلاث ايام',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.date_range_outlined, size: 15)
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'غرف نوم',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                unit.numOfRooms,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.king_bed_outlined, size: 15)
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'متر مربع',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                unit.area,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.widgets_rounded, size: 15)
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(unit.address),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.location_on,
                        size: 15,
                        color: Colors.red,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Stack(alignment: AlignmentDirectional.bottomEnd, children: [
            Image.asset(
              unit.image,
              height: 130,
              width: 150,
              fit: BoxFit.cover,
            ),
            Positioned(
                top: 5,
                right: 10,
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                )),
            Positioned(
              top: 5,
              right: 50,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 3),
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.tram,
                      color: Colors.white,
                      size: 15,
                    ),
                    Text(
                      '3D tour',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 20,
              color: Colors.black45,
              child: Center(
                child: Text(
                  ' قبل 13 يوم ',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
