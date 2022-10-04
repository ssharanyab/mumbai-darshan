import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  const CardTile(
      {Key? key,
      required this.imgName,
      required this.titleText,
      required this.subtitleText,
      required this.callback})
      : super(key: key);
  final String titleText;
  final String subtitleText;
  final String imgName;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgName),
                  fit: BoxFit.cover,
                  opacity: 40,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          titleText,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              width: 300,
            ),
          ),
        ),
      ),
    );
  }
}
