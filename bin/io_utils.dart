import 'dart:convert';
import 'dart:io';
import 'dart:async';


/// Abstract class for reading [int] arrays from _.json_ files
/// And writing arrays to .json files
abstract class IOUtils {

  /// ### Reads array from _filePath_
  /// 
  /// * If file type isn't a json then throws [Exception]
  /// * If file contains no [int] array inside 'data' part of json
  /// then throws [Exception]
  static Future<List<int>> arrayFromJson(String filePath) async {
    if (!_validateIfJson(filePath)) throw Exception();

    // Read json file as String
    // Then take an array from 'data' part of jsonMap 
    final fileContent = await File(filePath).readAsString();
    final array = json.decode(fileContent)['data'];
    
    if (array == null) {
      throw Exception();
    } else {
      return array;
    }
  }

  /// ### Writes array to _filePath_
  /// 
  /// * If file type isn't a json then throws [Exception]
  /// 
  /// * If file contains no [int] array inside **'data'** part of json
  /// then throws [Exception]
  static Future<void> arrayToJson(String filePath, List<int> array) async {
    if (!_validateIfJson(filePath)) throw Exception();

    // Put array into 'data' part of map and encode to json
    // Then write json string to file
    final arrayJsonString = json.encode({'data' : array});
    await File(filePath).writeAsString(arrayJsonString);
  }

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