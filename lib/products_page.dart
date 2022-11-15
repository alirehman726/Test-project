import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:project/add_products.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 20, left: 20),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         // crossAxisAlignment: CrossAxisAlignment.start,
      //         children: const [
      //           Icon(
      //             Icons.add,
      //             color: Colors.green,
      //             size: 20,
      //           ),
      //           Text(
      //             'Add',
      //             style: TextStyle(
      //                 color: Colors.green,
      //                 fontSize: 16,
      //                 fontWeight: FontWeight.w700),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      //   backgroundColor: Colors.white,
      //   elevation: 2,
      //   centerTitle: true,
      //   title: const Text(
      //     'All Products',
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize: 16,
      //       fontWeight: FontWeight.w700,
      //     ),
      //   ),
      // ),
      // body: const Center(
      //   child: Text('Products Page'),
      // ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Icon(
                      //   // // color: Colors.black,
                      // ),
                      Text(''),
                      Text(
                        'All Products',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllProducts(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.green,
                            ),
                            Text(
                              'Add',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                height: 100,
                width: double.infinity,
                child: TextFormField(
                  // maxLength: 10,
                  keyboardType: TextInputType.text,
                  // validator: (value) {
                  //   if (value == null ||
                  //       value.isEmpty ||
                  //       value.length < 10 ||
                  //       value.length > 10) {
                  //     return "Please Enter Your 10 Digit Number";
                  //   }
                  //   return null;
                  // },
                  // controller: homeController.mobileNumberController,
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 17),
                  decoration: InputDecoration(
                    labelText: "Search Products...",
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        height: 45,
                        width: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          // color: Colors.red,

                          color: HexColor("149C48"),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Image.asset(
                          "assets/filter.png",
                          alignment: Alignment.centerLeft,
                          height: 14,
                          width: 14,
                        ),
                      ),
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(top: 0, left: 0, right: 0),
                      // child: Text(
                      //   "+91 -",
                      //   style: TextStyle(fontSize: 17),
                      // ),
                      child: Icon(Icons.search),
                    ),
                    // labelText: "Mobile Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: ListTile(
                          // title: Text('Rehmanali'),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: Image.asset(
                                  "assets/placeholder.png",
                                  alignment: Alignment.centerLeft,
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              Container(
                                height: 100,
                                width: MediaQuery.of(context).size.width * 0.61,
                                padding:
                                    EdgeInsets.only(left: 8, top: 8, bottom: 8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: Container(
                                        padding: new EdgeInsets.all(0),
                                        child: Text(
                                          'Versatile 28G Potters Clay Matt Roofing Sheet Per Metre..',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          // softWrap: true,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.start,
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'UGX 15,000',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              'UGX 15,000',
                                              style: TextStyle(
                                                  color: HexColor("8391A1"),
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            // Container(
                                            //   height: 32,
                                            //   width: 32,
                                            //   color: Colors.green,
                                            // ),
                                            Container(
                                              height: 32,
                                              width: 32,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                // color: Colors.green,
                                                color: HexColor("C8EDD9"),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(12),
                                                ),
                                              ),
                                              child: Image.asset(
                                                "assets/edit.png",
                                                alignment: Alignment.centerLeft,
                                                height: 14,
                                                width: 14,
                                              ),
                                            ),

                                            const SizedBox(width: 10),
                                            Container(
                                              height: 32,
                                              width: 32,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                // color: HexColor("FF6464"),
                                                color: HexColor("FFB6C1"),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(12),
                                                ),
                                              ),
                                              child: Image.asset(
                                                "assets/delete.png",
                                                alignment: Alignment.centerLeft,
                                                height: 14,
                                                width: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
