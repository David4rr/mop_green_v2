// ignore_for_file: camel_case_types

part of 'pages.dart';

class cctvPage extends StatefulWidget {
  const cctvPage({Key? key}) : super(key: key);

  @override
  State<cctvPage> createState() => _cctvPageState();
}

class _cctvPageState extends State<cctvPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F2F4),
      appBar: AppBar(
        backgroundColor: button2Color,
        title: const Text("Cctv"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Column(
            children: [
              Card(
                child: Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.white,
                ),
              ),
              Card(
                child: Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.white,
                ),
              ),
              Card(
                child: Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.white,
                ),
              ),
              Card(
                child: Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
