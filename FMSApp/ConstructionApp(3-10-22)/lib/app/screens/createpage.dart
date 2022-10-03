import 'package:construction/app/resorce/fetchdata/fetchorder.dart';
import 'package:flutter/material.dart';

import '../containers/createretrundetails.dart';

class CreatetReturn extends StatefulWidget {
  const CreatetReturn({Key? key}) : super(key: key);

  @override
  State<CreatetReturn> createState() => _CreateReturnState();
}

class _CreateReturnState extends State<CreatetReturn> {
  var mtrlvalue = 2;
  String orderid ="";
  var value = "Bala";
 bool valueget= false;

    @override
  void initState() {
    super.initState();
  }

   void _onchangedid(String value) {
    
    setState(() {
      orderid = value;
      valueget = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: Column(
        children: [
          Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Flexible(flex: 3, child: Text("ORDER ID", style: TextStyle(fontSize: 18))),
          const Spacer(),
          Flexible(
      flex: 2,
      child: Card(
        color: Colors.black,
        child: Card(
          elevation: 0,
          margin: const EdgeInsets.all(1),
          color: Colors.white,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
            child: Center(
              child: TextFormField(
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
                              hintText: "orderID",
                              
                              hintStyle: const TextStyle(
                                color: Color.fromARGB(149, 122, 122, 122),
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            onChanged: _onchangedid,
                            onEditingComplete:(){
                              setState(() {
                                valueget = true;
                                
                              });
                              
                            }
              )), ), ), ), ),],),),

          valueget==true?  Expanded(
            flex: 1,
            child: FutureBuilder<List>(
                      future: fetchdata(),
                      builder: (context, snapshot) {
                        

                        if (snapshot.hasError) {
                          // ignore: avoid_print
                          print('error in loading ${snapshot.error.toString()}');
                        }
                        if (snapshot.hasData) {
                          List list = [snapshot.data];


                          return ListView.builder( 
                            itemCount: list[0].length,
                            itemBuilder: (context, i) {
                 if (list[0][i]['orderId'].toString() == orderid.toLowerCase() ||
              list[0][i]['orderId'].toString() == orderid.toUpperCase()) {
               
            return DetailContainer(mtrlvalue:list[0][i] , value: value,);
              
       } 
       // else if(1 ==(list[0].length)-i ){
          //   return get== false ?const Center(
          //     child:Text("order details not found",
          //               style: TextStyle(color: Colors.blue))
          //   ):Container();
          // }
          else
{ return Container(
            ); }          
        });
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        }),
          ):Container(
            color: Colors.black38,
          )
          
        ],
      ),
    ));
  }
}

