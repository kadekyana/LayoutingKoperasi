import 'package:flutter/material.dart';
import 'package:pemmob_lanjut/layouting/hariPertama.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: Text('Koperasi Undiksha'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HariPertama(),
                  ),
                );
              },
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.qr_code),
          backgroundColor: Colors.indigo[900],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          child: BottomNavigationBar(backgroundColor: Colors.grey[200], items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded), label: 'Profile'),
          ]),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black, width: 1)),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 1,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: Image(image: AssetImage('images/wi.png')),
                            )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[350],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.025,
                                      child: Text(
                                        'Nasabah',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.025,
                                        child:
                                            Text('I Kadek Dwi Gitayana Putra'))
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[350],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.025,
                                      child: Text(
                                        'Total Saldo Anda',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.025,
                                        child: Text('Rp. 12.000.000'))
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.black, width: 1)),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[200],
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.wallet_rounded,
                                  size:
                                      MediaQuery.of(context).size.height * 0.07,
                                  color: Colors.indigo[900],
                                ),
                                Text(
                                  'Cek Saldo',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[200],
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.arrow_outward_sharp,
                                  size:
                                      MediaQuery.of(context).size.height * 0.07,
                                  color: Colors.indigo[900],
                                ),
                                Text(
                                  'Transfer',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[200],
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.savings_outlined,
                                  size:
                                      MediaQuery.of(context).size.height * 0.07,
                                  color: Colors.indigo[900],
                                ),
                                Text(
                                  'Deposito',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[200],
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.payment_outlined,
                                  size:
                                      MediaQuery.of(context).size.height * 0.07,
                                  color: Colors.indigo[900],
                                ),
                                Text(
                                  'Pembayaran',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[200],
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.money,
                                  size:
                                      MediaQuery.of(context).size.height * 0.07,
                                  color: Colors.indigo[900],
                                ),
                                Text(
                                  'Pinjaman',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[200],
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.auto_graph_rounded,
                                  size:
                                      MediaQuery.of(context).size.height * 0.07,
                                  color: Colors.indigo[900],
                                ),
                                Text(
                                  'Mutasi',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.15,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Butuh Bantuan ?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          '0878-1234-1024',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        )
                      ],
                    ),
                    Icon(
                      Icons.call,
                      color: Colors.indigo[900],
                      size: 70,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
