// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:hexdump/hexdump.dart';

void main() {
  const hexDumpEncoder = HexDumpEncoder(sectionDelimiter: '    ');
  print(utf8.encoder.fuse(hexDumpEncoder).convert('Hello, World!'));
}
