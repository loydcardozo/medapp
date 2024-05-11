import 'package:flutter/material.dart';

class DocCard2 extends StatefulWidget {
  const DocCard2({super.key});

  @override
  State<DocCard2> createState() => _DocCard2State();
}

class _DocCard2State extends State<DocCard2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/empty_profile.jpg'),
              backgroundColor: Colors.transparent
          ),
          Text('Dr Loyd Cardozo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          Text('dentist',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black12
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.green,
                      size: 16,
                    ),
                    SizedBox(width: 1),
                    Text('4.5',
                      style: TextStyle(
                          color: Colors.green
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 1),
              Text('Reviews'),
              Spacer(flex: 1),
              Text('20'),
            ],
          )
        ],
      )
    );
    // )
    // ],
    // ),
    //     ]
    //   ),
    // );
  }
}
