import 'dart:convert';
import 'dart:developer';
import 'dart:ffi';

import 'package:first_flutter_application/pages/models/postModel.dart';
import 'package:http/http.dart' as http;

class UserService {
  Future<List<PostModel>?> getUsers() async {

  }

  Future<List<PostModel>?> getPosts() async {
    try {
      var url = Uri.parse('http://192.168.20.38:8080/api/posts');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        List<PostModel> _model = postsFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<Void?> createPost(PostModel posts) async {
    try {
      var url = Uri.parse('http://192.168.20.38:8080/api/posts');

      var response = await http.post(url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(posts),
      );

      // var jsonResponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        // PostModel post = postsFromJson(response.body) as PostModel;
        print("Data Updation Successfull!");
        //return _model;
      } else {
        throw Exception('Failed to load a case!' + response.body);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> deletePosts(int? id) async {
    try {
      var url = Uri.parse(
        'http://192.168.20.38:8080/api/posts' + "/" + '${id}');
      var response = await http.delete(url);

      // Response res = await delete('$apiUrl/$id');

      if (response.statusCode == 200) {
        print("Case deleted");
      } else {
        throw "Failed to delete a case.";
      }
    } catch (e) {
      log(e.toString());
    }
  }
}