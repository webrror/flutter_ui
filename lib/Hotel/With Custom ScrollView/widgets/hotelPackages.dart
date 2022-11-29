import 'package:flutter/material.dart';
import 'package:flutter_application_1/Hotel/With%20Custom%20ScrollView/data/data.dart';

class HotelPackage extends StatelessWidget {
  const HotelPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
        shrinkWrap: true,
        itemBuilder: (context, int index) {
          var data = popularHotels[index];
          return Container(
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2, 3),
                        blurRadius: 3,
                        spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                image: DecorationImage(
                                    image: NetworkImage(data['image']),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            data['name'],
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            data['desc'],
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            '\$${data['price']} / night',
                            style: const TextStyle(
                                fontSize: 15, color: Colors.blue),
                          ),
                          Wrap(
                            spacing: 15,
                            children: const [
                              Icon(
                                Icons.directions_car_filled_rounded,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.wine_bar_rounded,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.wifi_rounded,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          )
                        ],
                      )
                    ],
                  ),
                  Positioned(
                    right: 0,
                    top: 55,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child: Text(
                        'Book',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ));
        },
        separatorBuilder: (context, int index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: popularHotels.length);
  }
}
