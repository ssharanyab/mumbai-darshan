import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrinceofWales extends StatelessWidget {
  const PrinceofWales({Key? key}) : super(key: key);
  //final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prince of Wales Museum'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('assets/princeofwales.png'),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'It was founded during British rule of India in the early years of the 20th century by prominent citizens of the city then called Bombay, with the help of the government, to commemorate the visit of the Prince of Wales (later George V, king of the United Kingdom and emperor of India). It is located in the heart of South Mumbai near the Gateway of India. The museum was renamed in 1998 after Chhatrapati Shivaji Maharaj, the founder of the Maratha Empire.',
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
