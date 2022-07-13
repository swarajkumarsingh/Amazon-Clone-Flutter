import 'dart:convert';

import 'package:amazon_clone_flutter/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void httpErrorHandle({
  required http.Response response,
  required BuildContext context,
  required Function onSuccess,
}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      showSnackBar(context, jsonDecode(response.body)['msg']);
      print(jsonDecode(response.body)['error']);
      break;
    case 500:
      showSnackBar(context, jsonDecode(response.body)['error']);
      print(jsonDecode(response.body)['error']);
      break;
    default:
      showSnackBar(context, "Something went wrong, Please try again later.");
      print(jsonDecode(response.body));
  }
}