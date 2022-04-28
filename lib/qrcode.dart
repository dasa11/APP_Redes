import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:projeto_redes/telainicial.dart';

String ticket = '';

class ScanQR extends StatefulWidget {
  const ScanQR({Key? key}) : super(key: key);

  @override
  State<ScanQR> createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {


  QrcodeScan()
  async {
    ticket = '-1';
    String code = await FlutterBarcodeScanner.scanBarcode("#FFFFFF", "Cancelar", false, ScanMode.QR);
    ticket = code;
    if(ticket != '-1')
      {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context)=>MyHomePage())
        );
      }
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 44, 88, 1),
        body: SingleChildScrollView(

          child: Stack(

            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 120,),

                    Container(
                      width: 240,
                      height: 240,
                      child: Image.asset("images/nice.png", fit: BoxFit.fill),
                    ),
                    SizedBox(height: 40,),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.5,5 ,0 ,0 ),
                      child: ElevatedButton.icon(
                        onPressed: QrcodeScan,
                        icon: Icon(Icons.qr_code),
                        label: Text(
                          "Ler QrCode", style: TextStyle(color: Colors.white)
                        ),
                        style: ElevatedButton.styleFrom(primary: Color.fromRGBO(246 , 121 , 106 , 1))
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}