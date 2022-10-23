// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:hexdump/hexdump.dart';

void main() {
  const hexDumpEncoder = HexDumpEncoder(sectionDelimiter: '    ');
  print(hexDumpEncoder.convert(utf8.encoder.convert('Hello, World!')));
}
