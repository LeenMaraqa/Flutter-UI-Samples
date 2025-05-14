import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color(0xFF242046),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF322e59),
              borderRadius: BorderRadius.circular(70),
            ),
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Filter',
                      style: TextStyle(color: Color(0xFFbab9ce), fontSize: 35),
                    ),
                    Icon(Icons.close, color: Color(0xFFbab9ce), size: 45),
                  ],
                ),
                SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SEARCH BY KEYWORD',
                      style: TextStyle(color: Color(0xFFbab9ce), fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 340,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search jobs',
                          fillColor: Color(0xFF242046),
                          filled: true,
                          hintStyle: TextStyle(color: Color(0xFFbab9ce)),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFFbab9ce),
                            size: 30,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 30,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF242046)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                RadioExample(),
                SizedBox(height: 30),
                CheckBox(),
                SizedBox(height: 100),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xfFffbb57),
                      minimumSize: Size(650, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Save  Changes',
                      style: TextStyle(
                        color: Color(0xFF322e59),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum Choices { choice1, choice2, choice3 }

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  Choices? _choice = Choices.choice1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('VIEW', style: TextStyle(color: Color(0xFFbab9ce), fontSize: 16)),
        Row(
          children: [
            Transform.scale(
              scale: 1.7,
              child: Radio<Choices>(
                value: Choices.choice1,
                activeColor: Color(0xFFbab8d0),
                fillColor: WidgetStateColor.resolveWith(
                  (states) => Color(0xFFbab8d0),
                ),
                groupValue: _choice,
                onChanged: (Choices? value) {
                  setState(() {
                    _choice = value;
                  });
                },
              ),
            ),
            SizedBox(width: 5),
            Text(
              'All job posts',
              style: TextStyle(color: Color(0xFFbab9ce), fontSize: 17),
            ),
          ],
        ),
        Row(
          children: [
            Transform.scale(
              scale: 1.7,
              child: Radio<Choices>(
                value: Choices.choice2,
                activeColor: Color(0xFFbab8d0),
                fillColor: WidgetStateColor.resolveWith(
                  (states) => Color(0xFFbab8d0),
                ),
                groupValue: _choice,
                onChanged: (Choices? value) {
                  setState(() {
                    _choice = value;
                  });
                },
              ),
            ),
            SizedBox(width: 5),
            Text(
              'Active job posts',
              style: TextStyle(color: Color(0xFFbab9ce), fontSize: 17),
            ),
          ],
        ),
        Row(
          children: [
            Transform.scale(
              scale: 1.7,
              child: Radio<Choices>(
                value: Choices.choice3,
                activeColor: Color(0xFFbab8d0),
                fillColor: WidgetStateColor.resolveWith(
                  (states) => Color(0xFFbab8d0),
                ),
                groupValue: _choice,
                onChanged: (Choices? value) {
                  setState(() {
                    _choice = value;
                  });
                },
              ),
            ),
            SizedBox(width: 5),
            Text(
              'Archived job posts',
              style: TextStyle(color: Color(0xFFbab9ce), fontSize: 17),
            ),
          ],
        ),
      ],
    );
  }
}

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBox();
}

class _CheckBox extends State<CheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'INCLUDE',
          style: TextStyle(color: Color(0xFFbab9ce), fontSize: 16),
        ),
        Row(
          children: [
            Transform.scale(
              scale: 1.7,
              child: Checkbox(
                checkColor: Color(0xFF322e59),
                fillColor: WidgetStateColor.resolveWith(
                  (states) => Color(0xFFbab9ce),
                ),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
              ),
            ),
            Text(
              'Jobs shared with me',
              style: TextStyle(color: Color(0xFFbab9ce), fontSize: 17),
            ),
          ],
        ),
      ],
    );
  }
}
