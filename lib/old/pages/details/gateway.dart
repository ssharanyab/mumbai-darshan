import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GatewayofIndia extends StatelessWidget {
  const GatewayofIndia({Key? key}) : super(key: key);
  //final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gateway Of India'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('assets/gateway.png'),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'The Gateway of India is an arch-monument built in the early 20th century in the city of Bombay (now Mumbai), India. It was erected to commemorate the landing of King-Emperor George V, the first British monarch to visit India, in December 1911 at Strand Road near Wellington Fountain.',
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
