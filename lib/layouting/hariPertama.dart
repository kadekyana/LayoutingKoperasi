import 'package:flutter/material.dart';
import 'package:pemmob_lanjut/layouting/home.dart';

class HariPertama extends StatelessWidget {
  const HariPertama({super.key});

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
        ),
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          color: Colors.grey,
          child: Center(
              child: Text(
            'copyright@2022 by Undiksha',
            style: TextStyle(fontSize: 14),
          )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/0/09/Logo_undiksha.png'),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.blue,
                ),
                child: Card(
                  elevation: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Container(
                          width: 100,
                          height: 30,
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Username',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Container(
                          width: 100,
                          height: 30,
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Password',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      // Center(
                      //   child: GestureDetector(
                      //     onTap: () {
                      //       Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //           builder: (context) => Home(),
                      //         ),
                      //       );
                      //     },
                      //     child: Container(
                      //       width: 200,
                      //       height: 60,
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.all(
                      //           Radius.circular(30),
                      //         ),
                      //         color: Colors.blueAccent,
                      //       ),
                      //       child: Center(
                      //         child: Text(
                      //           'Login',
                      //           style: TextStyle(
                      //               fontSize: 20, color: Colors.white),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: FilledButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => Home()),
                                ),
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.indigo[900]),
                                elevation: MaterialStatePropertyAll(10),
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(
                                        horizontal: 50, vertical: 20))),
                            child: Text('Login'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Daftar Mbanking',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.018),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Lupa Password ?',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.018),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
