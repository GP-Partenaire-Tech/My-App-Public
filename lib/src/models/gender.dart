// ignore_for_file: constant_identifier_names -- Male, Female, NonBinary, Other per API

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum Gender {
  Male,
  Female,
  NonBinary,
  Other,
}
