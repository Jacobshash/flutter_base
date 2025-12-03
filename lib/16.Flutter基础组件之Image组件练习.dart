import 'package:flutter/material.dart';

void main() {
  runApp(MyColumnWidgetApp());
}

class MyColumnWidgetApp extends StatelessWidget {
  const MyColumnWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: SingleChildScrollView( // Wrap Column with SingleChildScrollView
            child: Column(
              children: [
                Image.asset('lib/images/1.jpg',width: 400,height: 200,),
                Image.asset('lib/images/1.png',width: 400,height: 200,),
                Image.asset('lib/images/3.jpg',width: 400,height: 200,),
                Image.asset('lib/images/4.jpg',width: 400,height: 200,),
                // Fixed the network image URL to use raw GitHub URL
                Image.network(
                  "https://raw.githubusercontent.com/Jacobshash/picx-images-hosting/master/017096e6e9af1cf653ec024a929be43baeea126d92f4f7855b657b9f393fb106.13lu1l3o7g.webp",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                )
              ]
            )
          )
        ),
      ),
    );
  }
}