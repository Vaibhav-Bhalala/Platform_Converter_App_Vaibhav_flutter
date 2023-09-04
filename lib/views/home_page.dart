import 'package:flutter/cupertino.dart';
import 'package:platform_converter_app/provider/platform_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController(text: "Search Here");
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            leading: Icon(
              CupertinoIcons.home,
              color: CupertinoColors.systemCyan,
            ),
            trailing: CupertinoSwitch(
              onChanged: (val) {
                Provider.of<Platformprovider>(context, listen: false)
                    .ConvertPlatform();
              },
              value: Provider.of<Platformprovider>(context, listen: true)
                  .changeplatform
                  .isIos,
            )),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CupertinoTextField(
                controller: controller,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: CupertinoColors.black),
              ),
              SizedBox(
                height: 25,
              ),
              CupertinoTextFormFieldRow(
                prefix: Icon(CupertinoIcons.search),
                placeholder: "Search",
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(12)),
              ),
              SizedBox(height: 50),
              CupertinoActivityIndicator(
                radius: 35,
              ),
              SizedBox(
                height: 55,
              ),
              CupertinoButton(
                  child: Text(
                    "Click Here",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {}),
            ]),
          ),
        ));
  }
}
