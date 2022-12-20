// ignore_for_file: camel_case_types

part of 'pages.dart';

class navigasiPage extends StatefulWidget {
  const navigasiPage({Key? key}) : super(key: key);

  @override
  State<navigasiPage> createState() => _navigasiPageState();
}

class _navigasiPageState extends State<navigasiPage> {
  int index = 0;
  final screens = [
    const dashboard(),
    const controllingPage(),
    const cctvPage(),
    const userPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: ConvexAppBar(
          backgroundColor: button2Color,
          items: const [
            TabItem(icon: Icons.home, title: 'Dashboard'),
            TabItem(
                icon: Icons.settings_applications_sharp, title: 'Controlling'),
            TabItem(icon: Icons.camera_indoor, title: 'Cctv'),
            TabItem(icon: Icons.person, title: 'User'),
          ],
          // initialActiveIndex: 0,
          onTap: (int i) {
            setState(() => index = i);
          }),
    );
  }
}
