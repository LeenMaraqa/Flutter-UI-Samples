import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE0E0E0),
        body: Center(
          child: Card(
            color: Colors.white,
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: 330,
                height: 440,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 120,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 24, 142, 239),
                          ),
                        ),
                        SizedBox(height: 60),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 20,
                          ),
                          child: Text(
                            'Jane Doe',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 7,
                            horizontal: 20,
                          ),
                          child: Text(
                            'Senior Flutter Dev',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 20,
                          ),
                          child: Text(
                            'Lorem ipsum dolor sit elit architecto impedit nulla quas voluptate consequatur fuga! amet et dolor, odit eaque, labore quas voluptatibus iste doloremque consequatur autem neque! Doloremque suscipit ad esse nostrum iste ex ratione in, sapiente sed laudantium optio praesentium non, ducimus ab explicabo unde recusandae accusantium earum? Expedita, quo harum itaque nihil cum, alias maiores asperiores quae sit nemo delectus cumque inventore iste ipsa, magnam placeat? Nihil dolorum impedit repellat deserunt, rem ducimus veritatis officia hic ipsum aliquam in, non, quasi corporis.',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 12),
                              Chip(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 9,
                                  right: 9,
                                  bottom: 1,
                                ),
                                label: Text(
                                  'Flutter',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Chip(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 9,
                                  right: 9,
                                  bottom: 1,
                                ),
                                label: Text(
                                  'Dart',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Chip(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 9,
                                  right: 9,
                                  bottom: 1,
                                ),
                                label: Text(
                                  'Firebase',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Chip(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 9,
                                  right: 9,
                                  bottom: 1,
                                ),
                                label: Text(
                                  'REST',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Chip(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 9,
                                  right: 9,
                                  bottom: 1,
                                ),
                                label: Text(
                                  'GraphQL',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text('Message'),
                              ),
                            ),
                            SizedBox(
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(color: Colors.black),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text('Follow'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      top: 72,
                      left: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1491485326079-8713ae1e00a9?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
