// ignore_for_file: camel_case_types

part of 'pages.dart';

class controlOtomatisPage extends StatefulWidget {
  const controlOtomatisPage({Key? key}) : super(key: key);

  @override
  State<controlOtomatisPage> createState() => _controlOtomatisPageState();
}

class _controlOtomatisPageState extends State<controlOtomatisPage> {
  bool statusSwitch = false;
  late TextEditingController controller;

  int exhaust1 = 35;
  int exhaust2 = 30;
  int kelembapanatas = 80;
  int kelembapanbawah = 30;

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  //!Body
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F2F4),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            // height: 280,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF16D682), Color(0xFF05BE5E)]),
            ),

            // margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4),
                  dense: true,
                  leading: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                    ),
                  ),
                  // leading: IconButton(
                  //   alignment: Alignment.centerLeft,
                  //   icon: const Icon(
                  //     Icons.arrow_back_ios_new_outlined,
                  //     color: Colors.white,
                  //   ),
                  //   onPressed: () {
                  //     Navigator.of(context).pop();
                  //   },
                  // ),
                  title: Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      'Control Otomatis', textAlign: TextAlign.center,
                      style: selamatdatangTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      // textAlign: TextAlign.center,
                    ),
                  ),
                  // trailing: const SizedBox(width: 30),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     IconButton(
                //       alignment: Alignment.centerLeft,
                //       // alignmnet: Alignment.centerLeft,
                //       // alignment: AlignmentGeometry(Alignment.centerLeft),
                //       icon: const Icon(
                //         Icons.arrow_back_ios_new_outlined,
                //         color: Colors.white,
                //       ),
                //       onPressed: () {
                //         Navigator.of(context).pop();
                //       },
                //     ),
                //     Text(
                //       'Control Otomatis',
                //       style: selamatdatangTextStyle.copyWith(
                //          fontSize: 20,
                //         fontWeight: FontWeight.bold,
                //       ),
                //       // textAlign: TextAlign.center,
                //     ),
                //   ],
                // ),
                const SizedBox(
                  height: 10,
                ),
                //!Grafik Suhu
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: 121,
                                height: 121,
                                child: SfRadialGauge(
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                      axisLineStyle: const AxisLineStyle(
                                        thickness: 0.2,
                                        thicknessUnit: GaugeSizeUnit.factor,
                                        cornerStyle: CornerStyle.bothCurve,
                                      ),
                                      showTicks: false,
                                      showLabels: false,
                                      onAxisTapped: (value) {},
                                      pointers: <GaugePointer>[
                                        RangePointer(
                                          color: Colors.white,
                                          value: 60,
                                          onValueChanged: (value) {},
                                          cornerStyle: CornerStyle.bothCurve,
                                          onValueChangeEnd: (value) {},
                                          onValueChangeStart: (value) {},
                                          enableDragging: true,
                                          width: 0.2,
                                          sizeUnit: GaugeSizeUnit.factor,
                                        ),
                                      ],
                                      annotations: <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          widget: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "65.0",
                                                style: wikwokTextStyle,
                                              ),
                                              Text(
                                                "suhu",
                                                style: meTextStyle,
                                              )
                                            ],
                                          ),
                                          positionFactor: 0.13,
                                          angle: 0.5,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //! Grafik Kelembapan
                    Expanded(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: 121,
                                height: 121,
                                child: SfRadialGauge(
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                      axisLineStyle: const AxisLineStyle(
                                        thickness: 0.2,
                                        thicknessUnit: GaugeSizeUnit.factor,
                                        cornerStyle: CornerStyle.bothCurve,
                                      ),
                                      showTicks: false,
                                      showLabels: false,
                                      onAxisTapped: (value) {},
                                      pointers: <GaugePointer>[
                                        RangePointer(
                                          color: Colors.white,
                                          value: 60,
                                          onValueChanged: (value) {},
                                          cornerStyle: CornerStyle.bothCurve,
                                          onValueChangeEnd: (value) {},
                                          onValueChangeStart: (value) {},
                                          enableDragging: true,
                                          width: 0.2,
                                          sizeUnit: GaugeSizeUnit.factor,
                                        ),
                                      ],
                                      annotations: <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          widget: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "65.0",
                                                style: wikwokTextStyle,
                                              ),
                                              Text(
                                                "Kelembapan",
                                                style: meTextStyle.copyWith(
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                          positionFactor: 0.13,
                                          angle: 0.5,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //!Scrollview
          Expanded(
            child: SingleChildScrollView(
              // scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: ListTile(
                          visualDensity:
                              const VisualDensity(horizontal: 0, vertical: -4),
                          dense: true,
                          leading: Text('Otomatis',
                              style: deskripsiTextStyle.copyWith(
                                  color: Colors.black)),
                          trailing: Switch(
                              activeColor: Colors.green,
                              value: statusSwitch,
                              onChanged: (value) {
                                setState(() {
                                  statusSwitch = !statusSwitch;
                                });
                              }),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: [
                            ListTile(
                              dense: true,
                              leading: const Text("Exahust ON : Suhu Atas",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  InkWell(
                                    onTap: () async {
                                      controller.text = exhaust1.toString();
                                      await openDialog();
                                      // final email = await openDialog5();
                                      // if (email == null || email.isEmpty) return;

                                      // setState(() => this.email = email);
                                    },
                                    child: Text(exhaust1.toString(),
                                        style: const TextStyle(
                                            color: Colors.grey, fontSize: 16)),
                                  ),
                                  //
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            exhaust1++;
                                          });
                                        },
                                        child: const Icon(
                                            Icons.keyboard_arrow_up_outlined),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          if (exhaust1 != 1) {
                                            setState(() {
                                              exhaust1--;
                                            });
                                          }
                                        },
                                        child: const Icon(
                                            Icons.keyboard_arrow_down_outlined),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              height: 3,
                              color: Colors.black26,
                            ),
                            ListTile(
                              dense: true,
                              leading: const Text("Exhaust OFF : Suhu Bawah",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  InkWell(
                                    onTap: () async {
                                      controller.text = exhaust2.toString();
                                      await openDialog1();
                                      // final email = await openDialog5();
                                      // if (email == null || email.isEmpty) return;

                                      // setState(() => this.email = email);
                                    },
                                    child: Text(exhaust2.toString(),
                                        style: const TextStyle(
                                            color: Colors.grey, fontSize: 16)),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      InkWell(
                                        child: const Icon(
                                            Icons.keyboard_arrow_up_outlined),
                                        onTap: () {
                                          setState(() {
                                            exhaust2++;
                                          });
                                        },
                                      ),
                                      InkWell(
                                        child: const Icon(
                                            Icons.keyboard_arrow_down_outlined),
                                        onTap: () {
                                          if (exhaust2 != 1) {
                                            setState(() {
                                              exhaust2--;
                                            });
                                          }
                                        },
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              height: 3,
                              color: Colors.black26,
                            ),
                            ListTile(
                              dense: true,
                              leading: const Text("Kelembapan\nAtas",
                                  textAlign: TextAlign.center,
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  InkWell(
                                    onTap: () async {
                                      controller.text =
                                          kelembapanatas.toString();
                                      await openDialog2();
                                      // final email = await openDialog5();
                                      // if (email == null || email.isEmpty) return;

                                      // setState(() => this.email = email);
                                    },
                                    child: Text(kelembapanatas.toString(),
                                        style: const TextStyle(
                                            color: Colors.grey, fontSize: 16)),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      InkWell(
                                        child: const Icon(
                                            Icons.keyboard_arrow_up_outlined),
                                        onTap: () {
                                          setState(() {
                                            kelembapanatas++;
                                          });
                                        },
                                      ),
                                      InkWell(
                                        child: const Icon(
                                            Icons.keyboard_arrow_down_outlined),
                                        onTap: () {
                                          if (kelembapanatas != 1) {
                                            setState(() {
                                              kelembapanatas--;
                                            });
                                          }
                                        },
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              height: 3,
                              color: Colors.black26,
                            ),
                            ListTile(
                              dense: true,
                              leading: const Text("Kelembapan\nBawah",
                                  textAlign: TextAlign.center,
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  InkWell(
                                    onTap: () async {
                                      controller.text =
                                          kelembapanbawah.toString();
                                      await openDialog3();
                                      // final email = await openDialog5();
                                      // if (email == null || email.isEmpty) return;

                                      // setState(() => this.email = email);
                                    },
                                    child: Text(kelembapanbawah.toString(),
                                        style: const TextStyle(
                                            color: Colors.grey, fontSize: 16)),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      InkWell(
                                        child: const Icon(
                                            Icons.keyboard_arrow_up_outlined),
                                        onTap: () {
                                          setState(() {
                                            kelembapanbawah++;
                                          });
                                        },
                                      ),
                                      InkWell(
                                        child: const Icon(
                                            Icons.keyboard_arrow_down_outlined),
                                        onTap: () {
                                          if (kelembapanbawah != 1) {
                                            setState(() {
                                              kelembapanbawah--;
                                            });
                                          }
                                        },
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 90),
                    //   child: Card(
                    //     child: DropdownSearch<dynamic>(
                    //       popupProps: const PopupProps.menu(
                    //         fit: FlexFit.loose,
                    //       ),
                    //       items: const [
                    //         "room1",
                    //         // "room2", "room3", "room4"
                    //       ],
                    //       dropdownDecoratorProps: const DropDownDecoratorProps(
                    //         dropdownSearchDecoration: InputDecoration(
                    //           contentPadding: EdgeInsets.all(10),
                    //           labelText: "Pilih Room",
                    //         ),
                    //       ),
                    //       onChanged: (o) {
                    //         setState(() {
                    //           switch (o) {
                    //             case "room1":
                    //               dropdownIndex = 0;
                    //               break;
                    //             case "room2":
                    //               dropdownIndex = 1;
                    //               break;
                    //             case "room3":
                    //               dropdownIndex = 2;
                    //               break;
                    //             case "room4":
                    //               dropdownIndex = 3;
                    //               break;
                    //             default:
                    //               dropdownIndex = 0;
                    //               break;
                    //           }
                    //         });
                    //       },
                    //       selectedItem: data[dropdownIndex],
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // data[dropdownIndex],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<String?> openDialog() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: TextField(
              keyboardType: TextInputType.number,
              maxLength: 2,
              autofocus: true,
              decoration: const InputDecoration(hintText: 'Masukan Value Suhu'),
              controller: controller,
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      controller.text = "";
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Batal',
                      style: TextStyle(color: Colors.grey, fontSize: 14))),
              TextButton(
                  onPressed: submit,
                  child: Text(
                    "Tentukan",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ));
  void submit() {
    // controller.text = "";
    setState(() {
      exhaust1 = int.parse(controller.text);
    });
    Navigator.of(context).pop();

    // controller.clear();
  }

  Future<String?> openDialog1() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: TextField(
              maxLength: 40,
              autofocus: true,
              decoration: const InputDecoration(hintText: 'Masukan Value Suhu'),
              controller: controller,
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      controller.text = "";
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Batal',
                      style: TextStyle(color: Colors.grey, fontSize: 14))),
              TextButton(
                  onPressed: submit1,
                  child: Text(
                    "Tentukan",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ));
  void submit1() {
    // controller.text = "";
    setState(() {
      exhaust2 = int.parse(controller.text);
    });
    Navigator.of(context).pop();

    // controller.clear();
  }

  Future<String?> openDialog2() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: TextField(
              maxLength: 40,
              autofocus: true,
              decoration:
                  const InputDecoration(hintText: 'Masukan Value Kelembapan'),
              controller: controller,
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      controller.text = "";
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Batal',
                      style: TextStyle(color: Colors.grey, fontSize: 14))),
              TextButton(
                  onPressed: submit2,
                  child: Text(
                    "Tentukan",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ));
  void submit2() {
    // controller.text = "";
    setState(() {
      kelembapanatas = int.parse(controller.text);
    });
    Navigator.of(context).pop();

    // controller.clear();
  }

  Future<String?> openDialog3() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: TextField(
              maxLength: 40,
              autofocus: true,
              decoration:
                  const InputDecoration(hintText: 'Masukan Value Kelembapan'),
              controller: controller,
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      controller.text = "";
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Batal',
                      style: TextStyle(color: Colors.grey, fontSize: 14))),
              TextButton(
                  onPressed: submit3,
                  child: Text(
                    "Tentukan",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ));
  void submit3() {
    // controller.text = "";
    setState(() {
      kelembapanbawah = int.parse(controller.text);
    });
    Navigator.of(context).pop();

    // controller.clear();
  }
}
