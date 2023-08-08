import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController txtController = TextEditingController();

Future<void> _dialogBuilder(BuildContext context) async {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return  AlertDialog(
          title: const Text("Give your new course a name"),
          content: TextField(
            controller: txtController,
          ),
          actions: [
            TextButton(onPressed: (){}, child: const Text("Save"))
          ],
        );
      }
  );
}

  Future<void> _dialogBuilder2(BuildContext context) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return  AlertDialog(
            title: const Text("Give your new student a name"),
            content: TextField(
              controller: txtController,
            ),

            actions: [
              TextButton(onPressed: (){}, child: const Text("Save"))
            ],
          );
        }
    );
  }

  Future<void> showBottomSheet() async {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom
          ),
          child: Container(
            height: 150,
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text("Give your new student a name"),
                TextField(
                  controller: txtController,
                ),
                TextButton(onPressed: () {}, child: const Text("Save"))
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> showBottomSheetTeacher() async {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom
          ),
          child: Container(
            height: 150,
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text("Give your teacher name"),
                TextField(
                  controller: txtController,
                ),


                TextButton(onPressed: () {}, child: const Text("Save"))
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ISAR DB")),
      body: Column(
        children: [
          const Expanded(child: SizedBox()),
          Column(
            children: [
              FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 40)
                ),
                  onPressed: (){
                    showBottomSheet();
                  },
                  child: Text("Add Course"),
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 40)
                ),
                onPressed: (){

                },
                child: Text("Add Student"),
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 40)
                ),
                onPressed: (){

                },
                child: Text("Add Teacher"),
              )
            ],
          )
        ],
      )
    );
  }
}
