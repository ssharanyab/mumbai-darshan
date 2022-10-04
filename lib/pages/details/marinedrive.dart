import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class marinedrive extends StatelessWidget {
  const marinedrive({Key? key}) : super(key: key);
  //final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marine Drive'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('assets/marinedrive.png'),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Marine Drive is a 3 kilometre-long Promenade along the Netaji Subhash Chandra Bose Road in Mumbai, India. The road and promenade were constructed by Pallonji Mistry. It is a C-shaped six-lane concrete road along the coast of a natural bay. At the northern end of Marine Drive is Girgaon Chowpatty and the adjacent road along links Nariman Point at southern tip to Babulnath and Malabar Hill at northern tip. Marine Drive is situated on reclaimed land facing west-south-west. Marine Drive is also known as the Queens Necklace because, when viewed at night from an elevated point anywhere along the drive, the street lights resemble a string of pearls in a necklace.',
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
