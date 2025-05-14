import 'package:flutter/material.dart';

class PackageDetails extends StatelessWidget {
  final Map<String, dynamic> data;
  const PackageDetails({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  shape: CircleBorder(
                    side: BorderSide(color: Color(0xFFC7C6C6)),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios_new, color: Colors.black),
              ),
            ),
            Text(
              'Package Details',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            DetailsCard(data: data),
            SizedBox(height: 20),
            StatusCard(data: data),
          ],
        ),
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  final Map<String, dynamic> data;
  const DetailsCard({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFFECECEC),
                minRadius: 30,
                child: Icon(Icons.gif_box_outlined, color: Color(0xfff98602)),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ID Number', style: TextStyle(fontSize: 12)),
                  Text(
                    data['id'],
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(width: 90),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF3E0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  data['status'],
                  style: TextStyle(
                    color: Color(0xfff98602),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(color: Color(0xFF9E9E9E), thickness: .8),
          SizedBox(height: 10),
          Row(
            children: [Text('DetailsPackage', style: TextStyle(fontSize: 16))],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Customer Name', style: TextStyle(fontSize: 14)),
                  Text(
                    data['customerName'],
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(width: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Status', style: TextStyle(fontSize: 14)),
                  Text(
                    data['status'],
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('From', style: TextStyle(fontSize: 14)),
                  Text(
                    data['from'],
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(width: 120),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('To', style: TextStyle(fontSize: 14)),
                  Text(
                    data['to'],
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StatusCard extends StatelessWidget {
  final Map<String, dynamic> data;

  const StatusCard({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> steps = data['steps'];
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shipping Status',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 270,
            child: Stepper(
              controlsBuilder:
                  (BuildContext context, ControlsDetails details) =>
                      SizedBox.shrink(),
              stepIconBuilder:
                  (stepIndex, stepState) => Icon(
                    Icons.radio_button_checked_outlined,
                    size: 20,
                    color: Color(0xFF333333),
                  ),
              stepIconMargin: EdgeInsets.only(bottom: 15),
              currentStep: 3,
              steps:
                  steps.map<Step>((step) {
                    return Step(
                      stepStyle: StepStyle(color: Colors.transparent),
                      title: Text(
                        step['title'],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        step['subtitle'],
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      content: SizedBox(),
                    );
                  }).toList(),
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfff98602),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Text(
                    'Live Tracking',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Color(0xfff98602), width: 1),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Text(
                    'Delivery',
                    style: TextStyle(color: Color(0xfff98602), fontSize: 17),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
