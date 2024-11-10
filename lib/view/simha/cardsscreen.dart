import 'package:dude/mycard.dart';
import 'package:dude/myloading.dart';
import 'package:dude/senseofvoice_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CardsScreen extends StatefulWidget {
  const CardsScreen({super.key});

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  Future<void> processSenseOfMoment() async {
    var r = await http.post(
      Uri.parse('https://beloved-selected-krill.ngrok-free.app/api/sense-of-moment/'),
      headers: {'Authorization': 'token 48871de8624cfa11a20341cb2d21ef1c8ad10452'},
      body: {
        'person_id': '2',
      },
    );
    print(r.statusCode);
    if (r.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoadingScreen()));
    }
    print(r.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyCardWidget(
            title: 'Sense Of Voice',
            description: 'Captures the unique tone and  creating a lasting emotional connection with the audience.',
            imagePath: 'assets/cardone.png',
            onPressed: () {
              // showModalBottomSheet(context: context, builder: (c) => SenseOfVoiceBottomSheet());
            },
          ),
          MyCardWidget(
            title: 'Sense Of Moment',
            description: 'The appreciation of presence and capturing the significance of an experience as it unfolds.',
            imagePath: 'assets/cardtwo.png',
            onPressed: () {
              processSenseOfMoment();
            },
          ),
        ],
      ),
    );
  }
}
