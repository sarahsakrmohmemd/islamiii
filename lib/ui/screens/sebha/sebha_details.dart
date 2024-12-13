import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  @override
  _SebhaScreenState createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int counter = 0;
  String zikr = 'سبحان الله';
  double rotationAngle = 0.0;

  void updateSebha() {
    setState(() {
      counter++;
      rotationAngle += 45;


      if (counter % 33 == 0) {
        if (zikr == 'سبحان الله') {
          zikr = 'الحمد لله';
        } else if (zikr == 'الحمد لله') {
          zikr = 'الله أكبر';
        } else {
          zikr = 'سبحان الله';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('السبحة الإلكترونية'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Transform.rotate(
              angle: rotationAngle,
              child: Image.asset(
                'assets/images/sebha.png',
                width: 200,
                height: 200,
              ),
            ),
          ),
          const SizedBox(height: 30),

          Text(
            zikr,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          Text(
            'العدد: $counter',
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: updateSebha,
            child: const Text(
              'تسبيح',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
