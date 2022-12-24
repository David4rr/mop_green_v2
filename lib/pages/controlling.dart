part of 'pages.dart';

class controllingPage extends StatefulWidget {
  const controllingPage({Key? key}) : super(key: key);

  @override
  State<controllingPage> createState() => _controllingPageState();
}

class _controllingPageState extends State<controllingPage> {
  bool statusSwitch1 = false;
  bool statusSwitch2 = false;
  bool statusSwitch3 = false;
  bool statusSwitch4 = false;
  bool statusSwitch5 = false;
  bool statusSwitch6 = false;
  bool statusSwitch7 = false;
  bool statusSwitch8 = false;
  bool statusSwitch9 = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        backgroundColor: const Color(0xFFF1F2F4),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 363,
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
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Status Akuator',
                          style: selamatdatangTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Image.asset('assets/images/divider2.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'On',
                          style: meTextStyle.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Image.asset('assets/images/divider.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Off',
                          style: meTextStyle.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -4),
                      dense: true,
                      leading: Text('All Exhaust',
                          style:
                              deskripsiTextStyle.copyWith(color: Colors.white)),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          // color: Colors.red,
                          color: (statusSwitch1 == true)
                              ? Colors.purple
                              : Colors.red,
                        ),
                        width: 20,
                        height: 20,
                      ),
                    ),
                    ListTile(
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -4),
                      dense: true,
                      leading: Text('Fresh Water',
                          style:
                              deskripsiTextStyle.copyWith(color: Colors.white)),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: (statusSwitch2 == true)
                              ? Colors.purple
                              : Colors.red,
                        ),
                        width: 20,
                        height: 20,
                      ),
                    ),
                    ListTile(
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -4),
                      dense: true,
                      leading: Text('Pompa Misting',
                          style:
                              deskripsiTextStyle.copyWith(color: Colors.white)),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: (statusSwitch3 == true)
                              ? Colors.purple
                              : Colors.red,
                        ),
                        width: 20,
                        height: 20,
                      ),
                    ),
                    ListTile(
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -4),
                      dense: true,
                      leading: Text('Exhaust Fan 1',
                          style:
                              deskripsiTextStyle.copyWith(color: Colors.white)),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: (statusSwitch4 == true)
                              ? Colors.purple
                              : Colors.red,
                        ),
                        width: 20,
                        height: 20,
                      ),
                    ),
                    ListTile(
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -4),
                      dense: true,
                      leading: Text('Exhaust Fan 2',
                          style:
                              deskripsiTextStyle.copyWith(color: Colors.white)),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: (statusSwitch5 == true)
                              ? Colors.purple
                              : Colors.red,
                        ),
                        width: 20,
                        height: 20,
                      ),
                    ),
                    ListTile(
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -4),
                      dense: true,
                      leading: Text('Exhaust Fan 3',
                          style:
                              deskripsiTextStyle.copyWith(color: Colors.white)),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: (statusSwitch6 == true)
                              ? Colors.purple
                              : Colors.red,
                        ),
                        width: 20,
                        height: 20,
                      ),
                    ),
                    ListTile(
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -4),
                      dense: true,
                      leading: Text('Exhaust Fan 4',
                          style:
                              deskripsiTextStyle.copyWith(color: Colors.white)),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: (statusSwitch7 == true)
                              ? Colors.purple
                              : Colors.red,
                        ),
                        width: 20,
                        height: 20,
                      ),
                    ),
                    ListTile(
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -4),
                      dense: true,
                      leading: Text('Cooling Pad 1',
                          style:
                              deskripsiTextStyle.copyWith(color: Colors.white)),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: (statusSwitch8 == true)
                              ? Colors.purple
                              : Colors.red,
                        ),
                        width: 20,
                        height: 20,
                      ),
                    ),
                    ListTile(
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -4),
                      dense: true,
                      leading: Text('Cooling Pad 2',
                          style:
                              deskripsiTextStyle.copyWith(color: Colors.white)),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: (statusSwitch9 == true)
                              ? Colors.purple
                              : Colors.red,
                        ),
                        width: 20,
                        height: 20,
                      ),
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
                  padding: const EdgeInsets.only(left: 3, right: 3, bottom: 30),
                  child: Column(
                    children: [
                      Card(
                        child: Container(
                          width: double.infinity,
                          color: Colors.white,
                          child: Column(
                            children: [
                              ListTile(
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                dense: true,
                                leading: Text(
                                  "Manual Control",
                                  style: deskripsiTextStyle.copyWith(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  // textAlign: TextAlign.start,
                                ),
                              ),
                              ListTile(
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                dense: true,
                                leading: Text('All Exhaust',
                                    style: deskripsiTextStyle.copyWith(
                                        color: Colors.black)),
                                trailing: Switch(
                                    activeColor: Colors.green,
                                    value: statusSwitch1,
                                    onChanged: (value) {
                                      setState(() {
                                        statusSwitch1 = !statusSwitch1;
                                        statusSwitch4 = value;
                                        statusSwitch5 = value;
                                        statusSwitch6 = value;
                                        statusSwitch7 = value;
                                      });
                                    }),
                              ),
                              const Divider(
                                height: 3,
                                color: Colors.black26,
                              ),
                              ListTile(
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                dense: true,
                                leading: Text('Fresh Water',
                                    style: deskripsiTextStyle.copyWith(
                                        color: Colors.black)),
                                trailing: Switch(
                                    activeColor: Colors.green,
                                    value: statusSwitch2,
                                    onChanged: (value) {
                                      setState(() {
                                        statusSwitch2 = !statusSwitch2;
                                      });
                                    }),
                              ),
                              const Divider(
                                height: 3,
                                color: Colors.black26,
                              ),
                              ListTile(
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                dense: true,
                                leading: Text('Pompa Misting',
                                    style: deskripsiTextStyle.copyWith(
                                        color: Colors.black)),
                                trailing: Switch(
                                    activeColor: Colors.green,
                                    value: statusSwitch3,
                                    onChanged: (value) {
                                      setState(() {
                                        statusSwitch3 = !statusSwitch3;
                                      });
                                    }),
                              ),
                              const Divider(
                                height: 3,
                                color: Colors.black26,
                              ),
                              ListTile(
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                dense: true,
                                leading: Text('Exhaust Fan 1',
                                    style: deskripsiTextStyle.copyWith(
                                        color: Colors.black)),
                                trailing: Switch(
                                    activeColor: Colors.green,
                                    value: statusSwitch4,
                                    onChanged: (value) {
                                      setState(() {
                                        statusSwitch4 = !statusSwitch4;
                                      });
                                    }),
                              ),
                              const Divider(
                                height: 3,
                                color: Colors.black26,
                              ),
                              ListTile(
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                dense: true,
                                leading: Text('Exhaust Fan 2',
                                    style: deskripsiTextStyle.copyWith(
                                        color: Colors.black)),
                                trailing: Switch(
                                    activeColor: Colors.green,
                                    value: statusSwitch5,
                                    onChanged: (value) {
                                      setState(() {
                                        statusSwitch5 = !statusSwitch5;
                                      });
                                    }),
                              ),
                              const Divider(
                                height: 3,
                                color: Colors.black26,
                              ),
                              ListTile(
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                dense: true,
                                leading: Text('Exhaust Fan 3',
                                    style: deskripsiTextStyle.copyWith(
                                        color: Colors.black)),
                                trailing: Switch(
                                    activeColor: Colors.green,
                                    value: statusSwitch6,
                                    onChanged: (value) {
                                      setState(() {
                                        statusSwitch6 = !statusSwitch6;
                                      });
                                    }),
                              ),
                              const Divider(
                                height: 3,
                                color: Colors.black26,
                              ),
                              ListTile(
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                dense: true,
                                leading: Text('Exhaust Fan 4',
                                    style: deskripsiTextStyle.copyWith(
                                        color: Colors.black)),
                                trailing: Switch(
                                    activeColor: Colors.green,
                                    value: statusSwitch7,
                                    onChanged: (value) {
                                      setState(() {
                                        statusSwitch7 = !statusSwitch7;
                                      });
                                    }),
                              ),
                              const Divider(
                                height: 3,
                                color: Colors.black26,
                              ),
                              ListTile(
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                dense: true,
                                leading: Text('Cooling Pad 1',
                                    style: deskripsiTextStyle.copyWith(
                                        color: Colors.black)),
                                trailing: Switch(
                                    activeColor: Colors.green,
                                    value: statusSwitch8,
                                    onChanged: (value) {
                                      setState(() {
                                        statusSwitch8 = !statusSwitch8;
                                      });
                                    }),
                              ),
                              const Divider(
                                height: 3,
                                color: Colors.black26,
                              ),
                              ListTile(
                                visualDensity: const VisualDensity(
                                    horizontal: 0, vertical: -4),
                                dense: true,
                                leading: Text('Cooling Pad 2',
                                    style: deskripsiTextStyle.copyWith(
                                        color: Colors.black)),
                                trailing: Switch(
                                    activeColor: Colors.green,
                                    value: statusSwitch9,
                                    onChanged: (value) {
                                      setState(() {
                                        statusSwitch9 = !statusSwitch9;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: double.infinity,
                          color: Colors.white,
                          child: Column(
                            children: [
                              ListTile(
                                dense: true,

                                leading: const Text(
                                  "Pompa Nutrisi",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),

                                // subtitle: Text("Ketuk Untuk Membuka"),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const <Widget>[
                                    Text("Ketuk Untuk Membuka",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12)),
                                    Icon(Icons.arrow_forward_ios_outlined),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const pompaNutrisiPage(),
                                    ),
                                  );
                                },
                              ),
                              const Divider(
                                height: 3,
                                color: Colors.black26,
                              ),
                              ListTile(
                                dense: true,

                                leading: const Text(
                                  "Control Otomatis",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                // subtitle: Text("Ketuk Untuk Membuka"),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const <Widget>[
                                    Text("Ketuk Untuk Membuka",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12)),
                                    Icon(Icons.arrow_forward_ios_outlined),
                                  ],
                                ),
                                onTap: () {
                                  if (statusSwitch1 == true ||
                                      statusSwitch2 == true ||
                                      statusSwitch3 == true ||
                                      statusSwitch4 == true ||
                                      statusSwitch5 == true ||
                                      statusSwitch6 == true ||
                                      statusSwitch7 == true ||
                                      statusSwitch8 == true ||
                                      statusSwitch9 == true) {
                                    setState(() {
                                      warningDialog();
                                    });
                                  } else {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const controlOtomatisPage(),
                                      ),
                                    );
                                  }
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
      ),
    );
  }

  Future warningDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: const Text('Warning !!!',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w500)),
            content: Text(
                'Sebelum Memasuki Control Otomatis Pastikan Control Manual Mati !!',
                style: deskripsiTextStyle.copyWith(
                    fontWeight: FontWeight.w400, color: Colors.black)),
            actions: [
              Center(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Ok",
                        textAlign: TextAlign.center,
                        style: buttonStyle.copyWith(fontSize: 16),
                      ),
                    )),
              ),
            ],
          ));

  Future<bool> showExitPopup() async {
    return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: const Text('Warning'),
            content: const Text('Apakah Anda Yakin Ingin Keluar ?'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('Tidak',
                      style: TextStyle(color: Colors.grey, fontSize: 14))),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text(
                    "Iya",
                    style: buttonStyle.copyWith(fontSize: 14),
                  )),
            ],
          ),
        ) ??
        false; //if showDialouge had returned null, then return false
  }
}
