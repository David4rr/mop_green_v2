// ignore_for_file: camel_case_types

part of 'pages.dart';

class pompaNutrisiPage extends StatefulWidget {
  const pompaNutrisiPage({Key? key}) : super(key: key);

  @override
  State<pompaNutrisiPage> createState() => _pompaNutrisiPageState();
}

class _pompaNutrisiPageState extends State<pompaNutrisiPage> {
  bool statusSwitch = false;
  bool statusSwitch1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F2F4),
      appBar: AppBar(
        backgroundColor: button2Color,
        title: const Text("Pompa Nutrisi"),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_outlined),
              onPressed: () {
                Navigator.of(context).pop();
              },
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(3),
        child: Column(
          children: [
            Card(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        width: 250,
                        height: 250,
                        child: SfRadialGauge(
                          axes: <RadialAxis>[
                            RadialAxis(
                              axisLineStyle: const AxisLineStyle(
                                thickness: 0.1,
                                thicknessUnit: GaugeSizeUnit.factor,
                                cornerStyle: CornerStyle.bothCurve,
                              ),
                              showTicks: false,
                              showLabels: false,
                              onAxisTapped: (value) {},
                              pointers: <GaugePointer>[
                                RangePointer(
                                  color: buttonColor,
                                  value: 60,
                                  onValueChanged: (value) {},
                                  cornerStyle: CornerStyle.bothCurve,
                                  onValueChangeEnd: (value) {},
                                  onValueChangeStart: (value) {},
                                  enableDragging: true,
                                  width: 0.1,
                                  sizeUnit: GaugeSizeUnit.factor,
                                ),
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                  widget: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("65.0",
                                              style: wikwokTextStyle.copyWith(
                                                  color: buttonColor)),
                                          const SizedBox(width: 5),
                                          Text("Cm",
                                              style: meTextStyle.copyWith(
                                                  color: buttonColor,
                                                  fontWeight: FontWeight.w500))
                                        ],
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3),
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
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        width: 250,
                        height: 250,
                        child: SfRadialGauge(
                          axes: <RadialAxis>[
                            RadialAxis(
                              axisLineStyle: const AxisLineStyle(
                                thickness: 0.1,
                                thicknessUnit: GaugeSizeUnit.factor,
                                cornerStyle: CornerStyle.bothCurve,
                              ),
                              showTicks: false,
                              showLabels: false,
                              onAxisTapped: (value) {},
                              pointers: <GaugePointer>[
                                RangePointer(
                                  color: buttonColor,
                                  value: 60,
                                  onValueChanged: (value) {},
                                  cornerStyle: CornerStyle.bothCurve,
                                  onValueChangeEnd: (value) {},
                                  onValueChangeStart: (value) {},
                                  enableDragging: true,
                                  width: 0.1,
                                  sizeUnit: GaugeSizeUnit.factor,
                                ),
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                  widget: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("65.0",
                                              style: wikwokTextStyle.copyWith(
                                                  color: buttonColor)),
                                          const SizedBox(width: 5),
                                          Text("Cm",
                                              style: meTextStyle.copyWith(
                                                  color: buttonColor,
                                                  fontWeight: FontWeight.w500))
                                        ],
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: ListTile(
                        visualDensity:
                            const VisualDensity(horizontal: 0, vertical: -4),
                        dense: true,
                        leading: Text('Pompa Irigasi 2',
                            style: deskripsiTextStyle.copyWith(
                                color: Colors.black)),
                        trailing: Switch(
                            activeColor: Colors.green,
                            value: statusSwitch1,
                            onChanged: (value) {
                              setState(() {
                                statusSwitch1 = !statusSwitch1;
                              });
                            }),
                      ),
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
}
