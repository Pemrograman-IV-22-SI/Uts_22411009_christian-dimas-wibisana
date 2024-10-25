import 'package:flutter/material.dart';
import 'package:uts_pemrograman_4_22411009_christian_dimas_wibisana/detail_pembelian.dart';

class BeliBarangPage extends StatefulWidget {
  const BeliBarangPage({super.key});

  static const String routeName = "/beli-barang";
  @override
  State<BeliBarangPage> createState() => _BeliBarangPageState();
}

String namaPelanggan = "";
String kodeBarang = "";
String namaBarang = "";
int hargaBarang = 0;
int stockBarang = 0;
int jumlahBeli = 0;

class _BeliBarangPageState extends State<BeliBarangPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtNamaPelanggan = TextEditingController();
    TextEditingController txtKodeBarang = TextEditingController();
    TextEditingController txtNamaBarang = TextEditingController();
    TextEditingController txtHarga = TextEditingController();
    TextEditingController txtStockBarang = TextEditingController();
    TextEditingController txtJumlahBeli = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Beli Barang'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Pelanggan", style: TextStyle(fontSize: 25)),
                    const SizedBox(
                      height: 30,
                    ),
                    Text("Nama"),
                    TextField(
                      controller: txtNamaPelanggan,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Masukan Nama'),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text("Kode Barang"),
                    TextField(
                      controller: txtKodeBarang,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Masukan Kode Barang'),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text("Nama Barang"),
                    TextField(
                      controller: txtNamaBarang,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Masukan Nama Barang'),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text("Harga"),
                    TextField(
                      controller: txtHarga,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Masukan Harga'),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text("Stock"),
                    TextField(
                      controller: txtStockBarang,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Masukan Stock Barang'),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text("Jumlah Beli"),
                    TextField(
                      controller: txtJumlahBeli,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Masukan Jumlah Beli'),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          namaPelanggan = txtNamaPelanggan.text;
                          namaBarang = txtNamaBarang.text;
                          kodeBarang = txtKodeBarang.text;
                          hargaBarang = int.tryParse(txtHarga.text) ?? 0;
                          stockBarang = int.tryParse(txtStockBarang.text) ?? 0;
                          jumlahBeli = int.tryParse(txtJumlahBeli.text) ?? 0;

                          Navigator.pushNamed(
                              context, DetailPembelianPage.routeName,
                              arguments: {
                                "namaPelanggan": namaPelanggan,
                                "kodeBarang": kodeBarang,
                                "namaBarang": namaBarang,
                                "hargaBarang": hargaBarang,
                                "stockBarang": stockBarang,
                                "jumlahBeli": jumlahBeli
                              });
                        });
                      },
                      child: Text('hitung'),
                    )
                  ])),
        ));
  }
}
