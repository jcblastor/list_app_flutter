import 'package:app_list/widgets/custom_card_type_2.dart';
import 'package:flutter/material.dart';

import 'package:app_list/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://mymodernmet.com/wp/wp-content/uploads/2020/02/Landscape-Photographer-of-the-Year-Sander-Grefte.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGxhbmRzY2FwZSUyMHJpdmVyfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://images.pexels.com/photos/1591373/pexels-photo-1591373.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            name: 'Un día en la playa',
          ),
        ],
      ),
    );
  }
}
