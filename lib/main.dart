import 'package:flutter/material.dart';
import 'package:uts_pemrograman_4_22411009_christian_dimas_wibisana/beli_barang.dart';
import 'package:uts_pemrograman_4_22411009_christian_dimas_wibisana/detail_pembelian.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  

    return MaterialApp(
      title: 'uts_pemrograman',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,),

        initialRoute: BeliBarangPage.routeName,
        routes: {
          BeliBarangPage.routeName: (context) => BeliBarangPage(),
          DetailPembelianPage.routeName: (context) => DetailPembelianPage(),
        },
      
    );
  }
}