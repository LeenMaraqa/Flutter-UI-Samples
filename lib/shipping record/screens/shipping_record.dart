import 'package:flutter/material.dart';
import '../screens/package_details.dart';
import '../model/data.dart';

class ShippingRecord extends StatelessWidget {
  const ShippingRecord({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfff7f7f7),
        appBar: AppBar(
          backgroundColor: Color(0xfff7f7f7),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shipping Record',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(width: 2, color: Color(0xFFECECEC)),
                ),
                child: IconButton(
                  icon: Icon(Icons.more_horiz, color: Colors.black),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ShippingStatusBar(), ShippingCard()],
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}

class ShippingStatusBar extends StatelessWidget {
  const ShippingStatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(35)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Chip(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              label: Text('All', style: TextStyle(color: Colors.white)),
              backgroundColor: Color(0xfff98602),
              shape: StadiumBorder(side: BorderSide.none),
            ),
            SizedBox(width: 15),
            Chip(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              label: Text('Complete', style: TextStyle(color: Colors.grey)),
              backgroundColor: Colors.white,
              shape: StadiumBorder(side: BorderSide.none),
            ),
            SizedBox(width: 15),
            Chip(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              label: Text('In Delivery', style: TextStyle(color: Colors.grey)),
              backgroundColor: Colors.white,
              shape: StadiumBorder(side: BorderSide.none),
            ),
            SizedBox(width: 15),
            Chip(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              label: Text('Pending', style: TextStyle(color: Colors.grey)),
              backgroundColor: Colors.white,
              shape: StadiumBorder(side: BorderSide.none),
            ),
          ],
        ),
      ),
    );
  }
}

class ShippingCard extends StatelessWidget {
  const ShippingCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: shippingData.length,
        itemBuilder: (context, index) {
          final data = shippingData[index];
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color:
                  data['status'] == 'Complete'
                      ? Color(0xFFf6f6f6)
                      : Color(0xFF373733),
              borderRadius: BorderRadius.circular(30),
              boxShadow:
                  data['status'] == 'Complete'
                      ? [
                        BoxShadow(
                          color: Colors.grey.withValues(alpha: .5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 4),
                        ),
                      ]
                      : null,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: CircleAvatar(
                          backgroundColor:
                              data['status'] == 'Complete'
                                  ? Color(0xFFECECEC)
                                  : Colors.white,
                          minRadius: 30,
                          child: Icon(
                            Icons.gif_box_outlined,
                            color: Color(0xfff98602),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'ID Number',
                            style: TextStyle(
                              color:
                                  data['status'] == 'Complete'
                                      ? Color(0xff090909)
                                      : Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            data['id'],
                            style: TextStyle(
                              color:
                                  data['status'] == 'Complete'
                                      ? Color(0xff090909)
                                      : Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 75),
                      Container(
                        width: 125,
                        height: 40,
                        margin: EdgeInsets.only(bottom: 25),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color:
                              data['status'] == 'Complete'
                                  ? Color(0xFF409c51).withAlpha(20)
                                  : Color(0xFF515050),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                          data['status'],
                          style: TextStyle(
                            color:
                                data['status'] == 'Complete'
                                    ? Color(0xFF409c51)
                                    : Color(0xfff98602),
                            fontWeight: FontWeight.w300,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Tracking Number',
                            style: TextStyle(
                              color:
                                  data['status'] == 'Complete'
                                      ? Color(0xff090909)
                                      : Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            data['trackingNumber'],
                            style: TextStyle(
                              color:
                                  data['status'] == 'Complete'
                                      ? Color(0xff090909)
                                      : Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Date Shipped',
                            style: TextStyle(
                              color:
                                  data['status'] == 'Complete'
                                      ? Color(0xff090909)
                                      : Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            data['date'],
                            style: TextStyle(
                              color:
                                  data['status'] == 'Complete'
                                      ? Color(0xff090909)
                                      : Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                              color:
                                  data['status'] == 'Complete'
                                      ? Color(0xff090909)
                                      : Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            data['location'],
                            style: TextStyle(
                              color:
                                  data['status'] == 'Complete'
                                      ? Color(0xff090909)
                                      : Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),

                  child: ColoredBox(
                    color:
                        data['status'] == 'Complete'
                            ? Color(0xFFECECEC)
                            : Color(0xFF515050),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton.icon(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.share, color: Color(0xfff98602)),
                          label: Text(
                            "Track",
                            style: TextStyle(color: Color(0xfff98602)),
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => PackageDetails(data: data),
                              ),
                            );
                          },
                          child: Text(
                            "View Details",
                            style: TextStyle(
                              color:
                                  data['status'] == 'Complete'
                                      ? Color(0xff090909)
                                      : Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 70,
          width: 330,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 50, right: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 85,
                height: 37,
                padding: EdgeInsets.symmetric(horizontal: 7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Icon(Icons.home_outlined, color: Colors.black),
                    SizedBox(width: 5),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFF4B4949),
                child: Icon(Icons.gif_box_outlined, color: Color(0xFFD5D4D4)),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFF4B4949),
                child: Icon(
                  Icons.local_shipping_outlined,
                  color: Color(0xFFD5D4D4),
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFF4B4949),
                child: Icon(Icons.person_outline, color: Color(0xFFD5D4D4)),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFF4B4949),
                child: Icon(Icons.mail_outline, color: Color(0xFFD5D4D4)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
