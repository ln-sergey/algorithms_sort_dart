import 'dart:convert';
import 'dart:io';
import 'dart:async';


/// Abstract class for reading [int] arrays from _.json_ files
/// And writing arrays to .json files
abstract class IOUtils {

  /// ### Returns if file type is _.json_
  static bool _validateIfJson(String filePath) {
    try {
      final fileType = filePath.substring(filePath.length - 6, filePath.length - 1);
      return fileType == '.json';
    } on RangeError {
      return false;
    } on NoSuchMethodError {
      return false;
    }
  }
}