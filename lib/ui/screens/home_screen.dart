import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/ui/screens/generate_qr_code_screeen.dart';
import 'package:qr_code_scanner/ui/screens/scan_qr_code_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'QR Scanner',
            style: GoogleFonts.abyssinicaSil(),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScanQrCodeScreen(),
                      ),
                    );
                  });
                },
                child: const Text(
                  'Scan QR Code',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GenerateQrCodeScreeen(),
                      ),
                    );
                  });
                },
                child: const Text('Generate QR Code',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ));
  }
}
