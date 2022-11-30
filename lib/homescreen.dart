import 'dart:async';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List color = [
    Colors.purple.shade700,
    Colors.red.shade500,
    Colors.purple.shade100,
    Colors.orange.shade300,
    Colors.blue.shade400,
    Colors.grey.shade600,
    Colors.blue.shade200,
    Colors.yellow.shade600,
    Colors.red.shade100,
    Colors.yellow.shade500,
  ];
  List que = [
    "The 227 year old 'Nawab Saheb Ki Haveli' is Iocated at?",
    "Which of the following years was celebrated as the World Communication Year?",
    "Writers Building is the headquarters of?",
    "The Komark Temple is dedicated to?",
    "Meenakshi Temple is in?",
    "Which city of India was first of all affected by plague?",
    "Which day is independence day? ",
    "Industrial Toxicology- Research Centre, is situated in which of the following states?",
    "Which of the followiing is a folk dance of India?",
    "The author of the book  'Waiting for the Mahatma' is  (N.D.A.2001)?"
  ];

  List oa = [
    "Hyderabad",
    "1981",
    "The times of India group",
    "Vishnu",
    "Puri",
    "Jaipur",
    "26 january,1947",
    "U.P",
    "Kathakali",
    "Amrita Pritam",
  ];
  List ob = [
    "Jaipur",
    "1983",
    "All India Writers Association",
    "Shiva",
    "Trivandrum",
    "Bombay",
    "15 january,1947",
    " Gujarat",
    "Mohiniattam",
    "R.K. Narayan",
  ];
  List oc = [
    "Agra",
    "1987",
    "West Bengal Government",
    "Krishna",
    "Chennai",
    "Surat",
    "15 August,1947",
    "M.P",
    "Garba",
    "N.A. Palkhiwala",
  ];
  List od = [
    "New Delhi",
    "1985",
    "Press Trust of India",
    "Sun- God",
    " Madurai",
    "Kanpur",
    "15 january,1956",
    "Bihar",
    "Manipuri",
    "Manohar  Malgonkar",
  ];
  List ranswer = [
    "Jaipur",
    "1983",
    "Press Trust of India",
    "Sun- God",
    "Madurai",
    "Surat",
    "15 August,1947",
    "U.P",
    "Garba",
    "R.K. Narayan",
  ];

  List money = [
    0,
    "5,000",
    "10,000",
    "20,000",
    "50,000",
    "1,00,000",
    "5,00,000",
    "10,00,000",
    "35,00,000",
    "70,00,000",
    "1,00,00,000"
  ];

  List uanswer = [];
  int point = 0;
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "KBC GAME",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: color[i],
          actions: [
            IconButton(
              color: Colors.black,
              onPressed: () {
                setState(() {
                  i = 0;
                  uanswer.clear();
                });
              },
              icon: Icon(Icons.refresh),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    color: color[i],
                    child: Text(
                      "${i + 1}.${que[i]}",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        w(20),
                        InkWell(
                          onTap: () {
                            result(oa[i]);
                          },
                          child: option(oa[i], 'A'),
                        ),
                        w(10),
                        InkWell(
                          onTap: () {
                            result(ob[i]);
                          },
                          child: option(ob[i], 'B'),
                        )
                      ],
                    ),
                    h(25),
                    Row(
                      children: [
                        w(20),
                        InkWell(
                          onTap: () {
                            result(oc[i]);
                          },
                          child: option(oc[i], 'C'),
                        ),
                        w(10),
                        InkWell(
                          onTap: () {
                            result(od[i]);
                          },
                          child: option(od[i], 'D'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget w(double width) {
    return SizedBox(
      width: width,
    );
  }

  Widget h(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget option(String? name, op) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 10),
      height: 50,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey),
      child: Text(
        "$op.${name}",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  void result(String? option) {
    setState(() {
      if (i <= 9) {
        uanswer.add(option);
        if (uanswer[i] == ranswer[i]) {
          Navigator.pushNamed(context, '1', arguments: money[i + 1]);
        } else {
          Navigator.pushNamed(context, '2', arguments: money[i]);
          i = 0;
          i--;
          uanswer.clear();
        }
      }
      i++;
      if (i == 10) {
        i = 0;
        uanswer.clear();
      }
    });
  }
}
