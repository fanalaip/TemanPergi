import 'package:flutter/material.dart';

class WisataLainnya extends StatelessWidget {
  const WisataLainnya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/wisata lainnya.png'),
        title: const Text('Wisata Lainnya'),
        backgroundColor:  Color.fromARGB(255, 130, 105, 224),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back),
          ),
          Text('Disini wisata lainnya'),
        ],
      ),
    );
  }
}