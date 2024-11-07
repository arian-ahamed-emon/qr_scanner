import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQrCodeScreeen extends StatefulWidget {
  const GenerateQrCodeScreeen({super.key});

  @override
  State<GenerateQrCodeScreeen> createState() => _GenerateQrCodeScreeenState();
}

class _GenerateQrCodeScreeenState extends State<GenerateQrCodeScreeen> {
  TextEditingController urlTEControlar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate QR Code'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (urlTEControlar.text.isNotEmpty)
                QrImageView(
                  data: urlTEControlar.text,
                  size: 200,
                ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: TextField(
                  controller: urlTEControlar,
                  decoration: InputDecoration(
                      hintText: 'Input Your Data',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Enter Your Data'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Generate QR Code'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
