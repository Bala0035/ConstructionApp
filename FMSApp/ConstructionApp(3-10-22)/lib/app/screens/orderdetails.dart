import 'package:flutter/material.dart';
import '../constens/colors.dart';
import '../widgets/infocard.dart';
import '../widgets/logoutbttn.dart';
import '../widgets/orderdetailswidhes.dart';

// ignore: must_be_immutable
class DetailsCard extends StatelessWidget {
    // ignore: prefer_typing_uninitialized_variables
    var id;
  DetailsCard({Key? key, required this.id}) : super(key: key);
  var value = "Value";

  @override
  Widget build(BuildContext context) {
    double hieght = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: hieght * 0.1,
        backgroundColor: apptheam,
        title: const Text("Order Details"),
        actions: const [
          LogOut(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Column(children: [
            Infocard(
              title: "ORDER ID",
              value: id["orderId"].toString(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("REQURED DATE RANGE",
                      style: TextStyle(fontSize: 18)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ValueCard(
                        value: value,
                      ),
                      const Text("to", style: TextStyle(fontSize: 18)),
                      ValueCard(
                        value: value,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Infocard(
              title: "SITE ENGINEER",
              value: id["siteEngineerId"].toString(),
            ),
            Infocard(
              title: "SUBCONTRACTOR",
              value: id["subContractor"].toString(),
            ),
            Infocard(
              title: "SECTION INCHARGE",
              value: id["sectionIcId"].toString(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Flexible(
                      flex: 3,
                      child:
                          Text("DATE & TIME", style: TextStyle(fontSize: 18))),
                  const Spacer(),
                  ValueCard(value: value),
                  ValueCard(value: value),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(5), child: const Text("Struture")),
                    const Text("Segment"),
                    const Text("Subsegment"),
                    const Text("Element"),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  width: double.infinity,
                  height: hieght * (0.0 + (5 / 17)),
                  child: ListView.builder(
                      physics: const ScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Valcard(
                              value: "Pouru Station",
                            ),
                            Valcard(
                              value: "Floar",
                            ),
                            Valcard(
                              value: "Zone 1",
                            ),
                            Valcard(
                              value: "Column$index",
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 6),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                        color: Color.fromARGB(255, 27, 40, 182)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ListTitle(width: width * 0.1, title: "S.No"),
                        ListTitle(width: width * 0.48, title: "Materal Code"),
                        ListTitle(width: width * 0.12, title: "Issue\nQty"),
                        ListTitle(width: width * 0.13, title: "Return\nQty"),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    //replace 5 is list lenght
                    height: hieght * (0.0 + (5 / 17)),
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ListCard(width: width * 0.1, mtrlvalue: 2),
                              ListCard(
                                  width: width * 0.48,
                                  mtrlvalue: "OOOOOOwgbdj"),
                              ListCard(width: width * 0.12, mtrlvalue: 2),
                              ListCard(width: width * 0.13, mtrlvalue: 2),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
