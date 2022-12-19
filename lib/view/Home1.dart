import 'package:demo/apiService/ApiService.dart';
import 'package:demo/model/User.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableCaffe extends StatefulWidget {
  const TableCaffe({Key? key}) : super(key: key);

  @override
  State<TableCaffe> createState() => _TableCaffe();
}

class _TableCaffe extends State<TableCaffe> {
  late List<User> _userModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }
  void _getData() async {
    _userModel = (await ApiService().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: FutureBuilder<List<User>?>(
        future: ApiService().getUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
                itemCount: snapshot.data?.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        child: Text(snapshot.data![index].name)),
                      );
                });
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
