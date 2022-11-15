import 'package:dashed_rect/dashed_rect.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Image.asset(
        //   "assets/logo.png",
        // ),

        title: Text(
          "Add Products",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          // child: IconButton(
          //   onPressed: () {},
          //   icon: const Icon(
          //     Icons.arrow_back_ios,
          //     color: Colors.black,
          //   ),
          // ),

          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              margin: EdgeInsets.only(top: 7, bottom: 7),

              alignment: Alignment.center,
              decoration: BoxDecoration(
                // color: Colors.red,

                color: HexColor("E8ECF4"),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              // child: Image.asset(
              //   "assets/delete.png",
              //   alignment: Alignment.centerLeft,
              //   height: 14,
              //   width: 14,
              // ),
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
                size: 18,
              ),
            ),
          ),
        ),
        elevation: 1.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Container(
              //   height: 100,
              //   padding: EdgeInsets.only(bottom: 10),
              //   width: double.infinity,
              //   color: Colors.white,
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       crossAxisAlignment: CrossAxisAlignment.end,
              //       children: [
              //         // Icon(
              //         //   Icons.arrow_back_ios_new_outlined,
              //         //   color: Colors.black,
              //         // ),
              //         // Container(
              //         //   height: 38,
              //         //   width: 38,
              //         //   alignment: Alignment.center,
              //         //   decoration: BoxDecoration(
              //         //     // color: Colors.red,

              //         //     color: HexColor("FF6464"),
              //         //     borderRadius: const BorderRadius.all(
              //         //       Radius.circular(12),
              //         //     ),
              //         //   ),
              //         //   child: Image.asset(
              //         //     "assets/delete.png",
              //         //     alignment: Alignment.centerLeft,
              //         //     height: 14,
              //         //     width: 14,
              //         //   ),
              //         // ),
              //         Text(
              //           'Add Products',
              //           style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 20,
              //               fontWeight: FontWeight.w700),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

              Container(
                padding: EdgeInsets.all(20),
                height: 200,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        // color: Colors.red,

                        color: HexColor("DADADA"),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: DashedRect(
                        color: HexColor("8391A1"),
                        strokeWidth: 2.0,
                        gap: 3.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/add.png",
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Add',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: HexColor("8391A1"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        // color: Colors.red,

                        color: HexColor("DADADA"),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Image.asset(
                        "assets/Rectangle.png",
                        alignment: Alignment.centerLeft,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        // color: Colors.red,

                        color: HexColor("DADADA"),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Image.asset(
                        "assets/Rectangle.png",
                        alignment: Alignment.centerLeft,
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: TextFormField(
                  // maxLength: 10,
                  keyboardType: TextInputType.text,

                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 17),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: HexColor("F7F8F9"),
                    labelText: "Product Title",

                    // labelText: "Mobile Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: TextFormField(
                  // maxLength: 10,

                  keyboardType: TextInputType.text,

                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 17),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: HexColor("F7F8F9"),
                    labelText: "Select Category",

                    // labelText: "Mobile Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Container(
                height: 70,
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.43,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontSize: 17),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: HexColor("F7F8F9"),
                          labelText: "Enter Old Price",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.43,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontSize: 17),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: HexColor("F7F8F9"),
                          labelText: "Enter New Price",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Variations',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              // Container(
              //   height: 220,
              //   width: double.infinity,
              //   margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              // ),
              Container(
                height: 230,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  // color: Colors.red,

                  color: HexColor("DADADA"),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Size',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                textAlign: TextAlign.start,
                                style: const TextStyle(fontSize: 17),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: HexColor("F7F8F9"),
                                  labelText: "Enter Size",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Unit',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                textAlign: TextAlign.start,
                                style: const TextStyle(fontSize: 17),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: HexColor("F7F8F9"),
                                  labelText: "Enter Unit",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Size',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                textAlign: TextAlign.start,
                                style: const TextStyle(fontSize: 17),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: HexColor("F7F8F9"),
                                  labelText: "Enter Size",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Unit',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                textAlign: TextAlign.start,
                                style: const TextStyle(fontSize: 17),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: HexColor("F7F8F9"),
                                  labelText: "Enter Unit",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: TextFormField(
                  // maxLength: 10,

                  keyboardType: TextInputType.text,

                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 17),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: HexColor("F7F8F9"),
                    labelText: "Short Description",

                    // labelText: "Mobile Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: TextFormField(
                  // maxLength: 10,
                  maxLines: 5,

                  keyboardType: TextInputType.text,

                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 17),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: HexColor("F7F8F9"),
                    labelText: "Description",

                    // labelText: "Mobile Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Text(
                  'Preparation Time',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 17),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: HexColor("F7F8F9"),
                    labelText: "Time",

                    // labelText: "Mobile Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),

              Container(
                height: 70,
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontSize: 17),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: HexColor("F7F8F9"),
                          labelText: "Minits",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontSize: 17),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: HexColor("F7F8F9"),
                          labelText: "Hours",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontSize: 17),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: HexColor("F7F8F9"),
                          labelText: "Days",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 17),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: HexColor("F7F8F9"),
                    labelText: "Time",

                    // labelText: "Mobile Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),

              Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          // backgroundColor: Colors.white,
                          backgroundColor: HexColor("f4cccc"),
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: HexColor("FF6464"),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),

                        onPressed: () {},
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: HexColor("FF6464")),
                        ),
                        // textColor: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          // backgroundColor: Colors.black,
                          backgroundColor: HexColor("149C48"),
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Add",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
