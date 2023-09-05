import 'package:flutter/material.dart';
import 'package:platform_converter_app/provider/platform_provider.dart';
import 'package:provider/provider.dart';

class Material_Screen extends StatefulWidget {
  const Material_Screen({super.key});

  @override
  State<Material_Screen> createState() => _Material_ScreenState();
}

class _Material_ScreenState extends State<Material_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material Screen"),
        leading: Icon(Icons.home),
        actions: [
          Switch(
              value:
                  Provider.of<Platformprovider>(context).changeplatform.isIos,
              onChanged: (val) {
                Provider.of<Platformprovider>(context, listen: false)
                    .ConvertPlatform();
              })
        ],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircularProgressIndicator(),
          SizedBox(
            height: 35,
          ),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  isDismissible: false,
                  barrierColor: Colors.purple.withOpacity(0.20),
                  context: context,
                  builder: (context) => Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.purpleAccent.withOpacity(0.30),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Back"),
                    ),
                  ),
                );
              },
              child: Text("Elevated Button"))
        ]),
      ),
    );
  }
}
