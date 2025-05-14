import 'package:flutter/material.dart';
import './model/data.dart';

class HotelsUserInterface extends StatelessWidget {
  const HotelsUserInterface({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: null,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    'Explore',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'WorkSans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.favorite_border_sharp,
                          size: 30,
                          color: Colors.black,
                        ),
                        onPressed: null,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.location_pin,
                          size: 30,
                          color: Colors.black,
                        ),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'London',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(88, 227, 202, 1),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(Icons.search, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Choose Date',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '12 Dec - 22 Dec',
                        style: TextStyle(
                          fontSize: 16.5,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border(left: BorderSide(color: Colors.grey)),
                        ),
                        child: SizedBox(height: 55, width: 7),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Number of Rooms',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '1 Room - 2 Adults',
                        style: TextStyle(
                          fontSize: 16.5,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 32),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '530 hotels found',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Filters',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.filter_list),
                          color: Colors.lightBlueAccent,
                          onPressed: null,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Expanded(
                child: ListView.builder(
                  itemCount: Hotel.hotels.length,
                  itemBuilder: (context, index) {
                    final hotel = Hotel.hotels[index];
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  image: DecorationImage(
                                    image: AssetImage(hotel.imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 15,
                                right: 20,
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 25,
                                    color: Color(0xFF58D5BE),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      hotel.name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Text(
                                          hotel.location,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(width: 4),
                                        Icon(
                                          Icons.location_on,
                                          color: Color(0xFF5BDEC5),
                                          size: 14,
                                        ),
                                        Text(
                                          hotel.distance,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(width: 2),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        SizedBox(width: 4),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xFF5BDEC5),
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xFF5BDEC5),
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xFF5BDEC5),
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xFF5BDEC5),
                                          size: 17,
                                        ),
                                        Icon(
                                          Icons.star_border,
                                          color: Color(0xFF5BDEC5),
                                          size: 17,
                                        ),
                                        Text(
                                          '${hotel.reviews.toString()} reviews',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${hotel.price.toString()}\$',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                                    Text(
                                      '/per night',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
