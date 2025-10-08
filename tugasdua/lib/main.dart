import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BussinessCard());
}

class BussinessCard extends StatelessWidget {
  const BussinessCard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TampilanKartu(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TampilanKartu extends StatelessWidget {
  const TampilanKartu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage ('https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/230/2024/10/21/sugiono-3214337435.png'),
              backgroundColor: Colors.lightGreen,
              radius: 70,
            ),
            Text('Alwi Muztaba',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            
            ),
            Text('Mahasiswa Teknik Informatika',
              style: GoogleFonts.agdasima(
                fontSize: 25,
                color: Colors.red
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.call), 
                title: Text('085797526141'),
              ),
            ),
            SizedBox(height: 15,),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.mail), 
                title: Text('anakbabah@gmail.com'),
                subtitle: Text('Email'),
                
              ),
            ),

            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.facebook), 
                title: Text('alwi akbar muztaba'),
              ),
            ),

            
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.location_city), 
                title: Text('JL. Aria Wiratanudatar'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}