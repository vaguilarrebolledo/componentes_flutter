import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';




class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      body: ListView(
        children: const[

          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://mymodernmet.com/wp/wp-content/uploads/2022/02/international-landscape-photographer-awards-20.jpeg',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://mymodernmet.com/wp/wp-content/uploads/2022/02/international-landscape-photographer-awards-27576-Ben-Goode-Reflector.jpg',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://mymodernmet.com/wp/wp-content/uploads/2022/02/international-landscape-photographer-awards-31006-AytekCetin-FromTwilight-To-Light.jpg',),
          SizedBox(height: 10),
          CustomCardType2(name:'Un hermoso paisaje', imageUrl: 'https://mymodernmet.com/wp/wp-content/uploads/2022/02/international-landscape-photographer-awards-7.jpeg',),
          SizedBox(height: 100),
        ]

      ),
    );
  }
}

