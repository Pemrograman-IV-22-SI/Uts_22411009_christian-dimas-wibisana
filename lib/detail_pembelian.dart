import 'package:flutter/material.dart';


class DetailPembelianPage extends StatelessWidget {
  const DetailPembelianPage({super.key});
static const String routeName = "/detail-pembelian";
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    String namaPelanggan = args["namaPelanggan"];
    String kodeBarang = args["kodeBarang"];
    String namaBarang = args["namaBarang"];
    double hargaBarang = args["hargaBarang"];
    double stockBarang = args["stockBarang"];
    int jumlahBeli = args["jumlahBeli"];


    double total = hargaBarang*jumlahBeli;
    double diskon = 0;
    double totalPotongan = 0;
    
    if(total>10000000) {
      diskon =  10;
      totalPotongan = total*10/100;

    }else {
      diskon = 0;
      totalPotongan = 0;
    }

    double grandTotal = total - totalPotongan;

     return Scaffold(
      appBar: AppBar(
      title: const Text('Beli Barang page'),
    ),
    body: 
    Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Pelanggan",style:TextStyle(fontSize: 15)),
        Text(namaPelanggan),
        const SizedBox(
                height: 8,),
        Text("Kode Barang",style:TextStyle(fontSize: 15)),
        Text(kodeBarang),
        const SizedBox(
                height: 8,),
        Text("Nama Barang",style:TextStyle(fontSize: 15)),
        Text(namaBarang),
        const SizedBox(
                height: 8,),
        Text("Harga",style:TextStyle(fontSize: 15)),
        Text("$hargaBarang"),
        const SizedBox(
                height: 8,),
        Text("Stok",style:TextStyle(fontSize: 15)),
        Text("$stockBarang"),
        const SizedBox(
                height: 8,),
        Text("Jumlah Beli",style:TextStyle(fontSize: 15)),
        Text("$jumlahBeli"),
        const SizedBox(
                height: 8,),
        Text("Diskon",style:TextStyle(fontSize: 15)),
        Text("$diskon%"),
        const SizedBox(
          height: 8,),

          Text("Total",style:TextStyle(fontSize: 15)),
          Text("$total"),
          const SizedBox( 
            height: 8,),
            Text("Total Potongan Diskon",style:TextStyle(fontSize: 15)),
            Text("$totalPotongan"),
            const SizedBox(height: 8,),
            Text("Grand Total",style:TextStyle(fontSize: 15)),
            Text("$grandTotal"),

ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Kembali'),)


      ],
    ),
    
    )
     );
     
  }

}