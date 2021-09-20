import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive App"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              if(constraints.maxWidth < 768 && constraints.maxHeight < 768){
                return Column(
                  children: [
                    buildBannerSlider(),
                    Expanded(child: buildText()),
                  ],
                );
              }else{
                return Row(
                  children: [
                    buildBannerSlider(),
                    Expanded(child: buildText()),
                  ],
                );
              }
            }
          ),
        ),
      ),
    );
  }

  Text buildText() => Text("I am Md. Samiul Islam dsajdasjd sadj sakd sajkd asjdk asjd ksaldj salkd jask dlasjd kasldj aslkd jas dklasj dklasdj kasl djaskld jaskld asjkdl asjd iwd jasld sajd iasld jasildasjdsaildsajdiasdas djsa idl asjd ilasj dlas djasildjwjlidjsadj said a jdisajdilasdj iasldjasildjsaildasjdilasjdlasidjasildjasildjasildjasilda"
      "dsa kd asjkd ashd uwidq hquidasue2e8 2e 28e828e28e82e828e  e8w8dj sad asjd hasjkdhasj");

  Container buildBannerSlider() {
    return Container(
                  height: 320,
                  width: 200,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.red, Colors.yellow]),
                      borderRadius: BorderRadius.circular(20)
                  ),
                );
  }
}
