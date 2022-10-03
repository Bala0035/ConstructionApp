// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../constens/colors.dart';
import 'createpage.dart';
import '../widgets/logoutbttn.dart';
import 'allorderpage.dart';
import 'returnpage.dart';
import 'searchscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listindex = 1;

  final pages = [
    const CreatetReturn(),
    const OrderList(), 
    const Returnlist(),
  ];

  String orderid = '';
  bool search = false;

  void searchvalue(){
    setState(() {
      search = true;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      listindex = index;
      search = false;
    });
  }

  void _onchangedid(String value) {
    setState(() {
      orderid = value;
    });
  }

  pagenavigation(bool search, int i) {
  
    if (search == false) {
      return pages[listindex];
    } else {
      
      return  SearchScreen(
        value: orderid,

      );
    }
  }

  @override
  Widget build(BuildContext context) {
    int i = 0;
    double width = MediaQuery.of(context).size.width;
    double hieght = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: hieght * 0.1,
        backgroundColor: apptheam,
        automaticallyImplyLeading: false,
        title: Container(
            child: listindex != 0
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding:
                            const EdgeInsets.only(bottom: 5, right: 10, left: 10),
                        height: hieght * 0.06,
                        width: width * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: TextField(
                            textAlign: TextAlign.left,
                            style: const TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(150, 255, 255, 255)),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              hintText: "Search order",
                              suffixIcon: IconButton(
                                onPressed: () async {
                                  searchvalue();
                                                                    
                                },
                                icon: const Icon(
                                  Icons.search,
                                  color: Color.fromARGB(255, 73, 73, 73),
                                ),
                              ),
                              hintStyle: const TextStyle(
                                color: Color.fromARGB(149, 122, 122, 122),
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            onChanged: _onchangedid,
                          ),
                        ),
                      ),
                    ],
                  )
                : const Text("Create A Return")),
        actions: const [
          LogOut(),
        ],
      ),
      body: pagenavigation(search, i),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          color: apptheam,
        ),
        child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.add_chart_outlined,
                ),
                label: "Create Return",
                backgroundColor: apptheam,
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.file_copy_sharp,
                ),
                label: "Orders",
                backgroundColor: apptheam,
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.assignment_returned,
                ),
                label: "Returns",
                backgroundColor: apptheam,
              ),
            ],
            backgroundColor: apptheam,
            currentIndex: listindex,
            selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
            unselectedItemColor: const Color.fromARGB(255, 186, 186, 186),
            iconSize: 30,
            onTap: _onItemTapped,
            elevation: 5));
  }
}
