import 'package:flutter/material.dart';
import 'barang.dart';

class Menu extends StatelessWidget {

  final List _barang = [
    'Bando 08',
    'Bando 2 cagak',
    'Bando 20 DN',
    'Bando 3 daun',
    'Bando 30',
    'Bando 35',
    'Bando 47',
    'Bando 50',
    'Bando 75',
    'Bando 80',
  ];

  final List _nomor = ['1','2','3','4','5','6','7','8','9','10'];

  final List _harga = [
    'harga: Rp 1000',
    'harga: Rp 2000',
    'harga: Rp 1000',
    'harga: Rp 1000',
    'harga: Rp 1000',
    'harga: Rp 1000',
    'harga: Rp 1000',
    'harga: Rp 1000',
    'harga: Rp 1000',
    'harga: Rp 500',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40), 
          child: Container(
            decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3))
            ]),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Row(
               children: [
                  Text('Filter Produk'),
                  Text('                                              ')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: () {}, 
                  icon: const Icon(Icons.close))
                ],
              )
            ],
          )
          ),
          
          ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          'Data Produk',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh_rounded))
        ],
        backgroundColor: Colors.purple[20],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[100],
        child: const Icon(Icons.add),
      ),

      body: ListView.builder(itemCount: _barang.length, itemBuilder: (contect, index) {
        return Barang(nomor: _nomor[index], barang: _barang[index], harga: _harga[index]);
      })
    );
  }
}

