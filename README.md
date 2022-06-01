APP_REDES

	Version:
	
  		Android Studio recent version.
 		Flutter 2.0

	pubspec.yaml dependencies:

  	cupertino_icons: ^1.0.2
  		flutter_barcode_scanner: ^2.0.0
  		http: ^0.13.4
  
	Screens:

  		qrCode: A Screen to read the QRCode after pressing a button
  		HomePage: A Screen to show the product, and inserting the desired quantity to send to stock

	Functions:
	
  	ScanQR (qrCode): After pressing the button, it will read the code and send the product ID to the API to get the product name
  		Cadastrar (HomePage): It's the next step after scan the qrcode, the user will input the product quantity to save it in the internet stock
