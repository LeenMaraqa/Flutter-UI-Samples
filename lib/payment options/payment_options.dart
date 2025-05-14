import 'package:flutter/material.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({super.key});

  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  String selectedOption = 'monthly';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  'Try FREE for 4 weeks',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  'We uncover the facts around the',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'clock, all over the globe',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 25),
                GestureDetector(
                  onTap: () => setState(() => selectedOption = 'monthly'),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 35, vertical: 7),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color:
                            selectedOption == 'monthly'
                                ? Color(0xFF3F51B5)
                                : Color(0xFFE0E0E0),
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 10),
                      leading: Icon(
                        selectedOption == 'monthly'
                            ? Icons.check_circle
                            : Icons.radio_button_unchecked,
                        color:
                            selectedOption == 'monthly'
                                ? Colors.black
                                : Color(0xFF9E9E9E),
                        size: 38,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MONTHLY',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF616161),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '4 weeks for free',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Then \$3 every month for the first year',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() => selectedOption = 'yearly'),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 35, vertical: 7),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color:
                            selectedOption == 'yearly'
                                ? Color(0xFF3F51B5)
                                : Color(0xFFE0E0E0),
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 10),
                      leading: Icon(
                        selectedOption == 'yearly'
                            ? Icons.check_circle
                            : Icons.radio_button_unchecked,
                        color:
                            selectedOption == 'yearly'
                                ? Colors.black
                                : Color(0xFF9E9E9E),
                        size: 38,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 95,
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFF3F51B5),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'Best value',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 7),
                          Text(
                            'YEARLY',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF616161),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '4 weeks for free',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Then \$30 for the first year',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: 245,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0D0C22),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 245,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.grey.shade300, width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 30,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Continue with  ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Image.network(
                          'https://i.pcmag.com/imagery/reviews/068BjcjwBw0snwHIq0KNo5m-15..v1602794215.png',
                          height: 35,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                GestureDetector(
                  onDoubleTap: () {},
                  child: Text(
                    'View more offers',
                    style: TextStyle(
                      color: Color(0xFF28246E),
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
