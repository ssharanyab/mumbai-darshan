import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cst extends StatelessWidget {
  const cst({Key? key}) : super(key: key);
  //final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chhatrapati Shivaji Terminus'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('assets/cst.png'),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Chhatrapati Shivaji Terminus (officially Chhatrapati Shivaji Maharaj Terminus, formerly Victoria Terminus, Bombay station code: CSMT (mainline)[4]/ST (suburban)), is a historic railway terminus and UNESCO World Heritage Site in Mumbai, Maharashtra, India.The terminus was designed by a British born architectural engineer Frederick William Stevens from an initial design by Axel Haig, in an exuberant Italian Gothic style. Its construction began in 1878, in a location south of the old Bori Bunder railway station, and was completed in 1887, the year marking 50 years of Queen Victorias rule.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Container(
                child: Text('Visit Here'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
