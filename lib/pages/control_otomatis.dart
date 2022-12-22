// ignore_for_file: camel_case_types

part of 'pages.dart';

class controlOtomatisPage extends StatefulWidget {
  const controlOtomatisPage({Key? key}) : super(key: key);

  @override
  State<controlOtomatisPage> createState() => _controlOtomatisPageState();
}

class _controlOtomatisPageState extends State<controlOtomatisPage> {
  late TextEditingController controller;

  var exhaust1 = '35';

  bool statusSwitch = false;

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
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        alignment: Alignment.centerLeft,
                        // alignmnet: Alignment.centerLeft,
                        // alignment: AlignmentGeometry(Alignment.centerLeft),
                        icon: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Text(
                        'Control Otomatis',
                        style: selamatdatangTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        // textAlign: TextAlign.center,
                      ),
                    ],
                  ),
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
                          leading: Text('Pompa Irigasi 1',
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
                        width: double.infinity,
                        height: 300,
                        color: Colors.white,
                        child: Column(
                          children: [
                            ListTile(
                              dense: true,
                              leading: const Text("Email",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(exhaust1,
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 12)),
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      InkWell(
                                        child: const Icon(
                                            Icons.keyboard_arrow_up_outlined),
                                        onTap: () {},
                                      ),
                                      InkWell(
                                        child: const Icon(
                                            Icons.keyboard_arrow_down_outlined),
                                        onTap: () {},
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              onTap: () async {
                                controller.text = exhaust1;
                                await openDialog();
                                // final email = await openDialog5();
                                // if (email == null || email.isEmpty) return;

                                // setState(() => this.email = email);
                              },
                            ),
                            ListTile(
                              dense: true,
                              leading: const Text("Email",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(exhaust1,
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 12)),
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      InkWell(
                                        child: const Icon(
                                            Icons.keyboard_arrow_up_outlined),
                                        onTap: () {},
                                      ),
                                      InkWell(
                                        child: const Icon(
                                            Icons.keyboard_arrow_down_outlined),
                                        onTap: () {},
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              onTap: () async {
                                controller.text = exhaust1;
                                await openDialog();
                                // final email = await openDialog5();
                                // if (email == null || email.isEmpty) return;

                                // setState(() => this.email = email);
                              },
                            ),
                            ListTile(
                              dense: true,
                              leading: const Text("Email",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(exhaust1,
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 12)),
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      InkWell(
                                        child: const Icon(
                                            Icons.keyboard_arrow_up_outlined),
                                        onTap: () {},
                                      ),
                                      InkWell(
                                        child: const Icon(
                                            Icons.keyboard_arrow_down_outlined),
                                        onTap: () {},
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              onTap: () async {
                                controller.text = exhaust1;
                                await openDialog();
                                // final email = await openDialog5();
                                // if (email == null || email.isEmpty) return;

                                // setState(() => this.email = email);
                              },
                            ),
                            ListTile(
                              dense: true,
                              leading: const Text("Email",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(exhaust1,
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 12)),
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      InkWell(
                                        child: const Icon(
                                            Icons.keyboard_arrow_up_outlined),
                                        onTap: () {},
                                      ),
                                      InkWell(
                                        child: const Icon(
                                            Icons.keyboard_arrow_down_outlined),
                                        onTap: () {},
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              onTap: () async {
                                controller.text = exhaust1;
                                await openDialog();
                                // final email = await openDialog5();
                                // if (email == null || email.isEmpty) return;

                                // setState(() => this.email = email);
                              },
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
              maxLength: 40,
              autofocus: true,
              decoration:
                  const InputDecoration(hintText: 'Masukan Nama Depan Anda'),
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
      exhaust1 = controller.text;
    });
    Navigator.of(context).pop();

    // controller.clear();
  }
}
