import 'package:first_flutter_application/pages/view.dart';
import 'package:first_flutter_application/pages/models/postModel.dart';
import 'package:first_flutter_application/pages/services/service.dart';
import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  late List<PostModel>? _userModel = [];

  void _getData() async {
    _userModel = (await UserService().getPosts())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  Widget _getPostList(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API Example for Post'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, "/signup", (route) => false);
            },
            icon: Icon(Icons.arrow_back_ios_sharp)
          )
        ],
      ),
      body: _userModel == null || _userModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: ListView.builder(
                itemCount: _userModel!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: FlutterLogo(size: 72.0),
                    title: Text(_userModel![index].title.toString()),
                    subtitle: Text(_userModel![index].body.toString()),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil<dynamic>(
                          context,
                          MaterialPageRoute<dynamic>(
                            builder: (BuildContext context) =>
                              ViewForm(posts: _userModel![index]),
                          ),
                          (route) => false,
                        );
                      },
                      icon: Icon(Icons.more_vert),
                    ),
                    isThreeLine: true,
                  );
                },
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _getPostList(context);
  }
}
