import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  var user;
  var dataa = [];
  Future<dynamic> users() async {
    final responce = await get(
      Uri.parse('https://demo.ezyerp.live/api/banners?X-API-KEY=DemoApi1234'),
    );
    user = jsonDecode(responce.body);
    setState(() {
      return user;
    });
    print(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue[100]),
                child: Row(children: [
                  Icon(Icons.location_pin),
                  Text('calicut'),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_drop_down)
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Welcome!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.person_2)
              ],
            ),
            Text(
              'how you feeling today',
              style: const TextStyle(fontSize: 10),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[100]),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('serach'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.search),
                      )
                    ])),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  users();
                });
              },
              child: Column(
                children: [
                  if (user == null) Text('pleace enter the button'),
                  if (user != null)
                    Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.network(user['data'][0]['image'].toString(),
                          fit: BoxFit.cover),
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[100]),
                        height: 60,
                        width: 60,
                        child: Image.asset('assets/thyroid.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Thyroid'),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[100]),
                        height: 60,
                        width: 60,
                        child: Image.asset('assets/diabeyis.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Diabetis'),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[100]),
                        height: 60,
                        width: 60,
                        child: Image.asset('assets/heart.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Heart'),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[100]),
                        height: 60,
                        width: 60,
                        child: Image.asset(
                          'assets/vitamin-removebg-preview.png',
                        ),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Text('Vitamin'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text("Why chose us", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[100]),
                          height: 100,
                          width: 230,
                          child: Row(
                            children: [
                              Image.asset('assets/nbl.jpeg'),
                              SizedBox(
                                width: 20,
                              ),
                              Text('NABL \nAproved labs')
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[100]),
                          height: 100,
                          width: 230,
                          child: Row(
                            children: [
                              Image.asset('assets/nurse.jpeg'),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Painless\nsamle collection')
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[100]),
                          height: 100,
                          width: 230,
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 0,
                                  width: 0,
                                  child: Image.asset(
                                    'assets/note.jpeg',
                                    fit: BoxFit.cover,
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Genaral \nAproved labs')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Family prime packages',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[100]),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Senior citizen Full body\ncheck up',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Image.asset('assets/family.jpeg'),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
