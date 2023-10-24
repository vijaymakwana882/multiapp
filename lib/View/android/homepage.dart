import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String date = '';
  String time = '';

  @override
  void initState() {
    super.initState();
    TimeOfDay PickTime = TimeOfDay(hour: 0, minute: 0);
    DateTime? fetchdate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text(
          'Android',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            date,
            style: TextStyle(fontSize: 32),
          ),
          ElevatedButton(
            onPressed: () async {
              DateTime? res = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2025),
              );
              setState(
                () {
                  date = '${res!.day}/${res!.month}/${res!.year}';
                },
              );
            },
            child: Text('Change Date'),
          ),
          Text(time, style: TextStyle(fontSize: 22)),
          ElevatedButton(
            onPressed: () async {
              TimeOfDay? fetch = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  cancelText: 'To Fir Rehne Do');
              setState(() {
                time = '${fetch!.hour}:${fetch!.minute}';
              });
            },
            child: Text('Change Time'),
          ),
        ],
      ),
    );
  }
}
