import 'dart:convert';
import 'dart:typed_data';

import 'package:collection/collection.dart';

class HexDumpEncoder extends Converter<Uint8List, String> {
  final int bytesPerLine;
  final bool uppercase;
  final bool showOffset;
  final bool showText;
  final String sectionDelimiter;

  const HexDumpEncoder({
    this.bytesPerLine = 0x10,
    this.uppercase = true,
    this.showOffset = true,
    this.showText = true,
    this.sectionDelimiter = '\t',
  });

  @override
  String convert(Uint8List input) {
    final output = StringBuffer();
    _convert(input, output);
    return output.toString();
  }

  void _convert(Uint8List input, StringSink output) {
    final int offsetWidth;
    if (showOffset) {
      final maxOffset = input.length - 1;
      final maxOffsetWidth = maxOffset.toRadixString(16).length;
      offsetWidth = ((maxOffsetWidth + 8 - 1) ~/ 8) *
          8; // https://stackoverflow.com/a/9194117
    } else {
      offsetWidth = 0;
    }

    input.slices(bytesPerLine).forEachIndexed((lineNumber, line) {
      if (lineNumber != 0) output.writeln();
      if (showOffset) {
        var offset = (lineNumber * bytesPerLine)
            .toRadixString(16)
            .padLeft(offsetWidth, '0');
        if (uppercase) offset = offset.toUpperCase();
        output.write(offset);
        output.write(sectionDelimiter);
      }

      line.forEachIndexed((byteNumber, byte) {
        if (byteNumber != 0) output.write(' ');

        // The bitwise arithmetic here is equivalent to `byte ~/ 16` and `byte % 16`
        // for valid byte values, but is easier for dart2js to optimize given that
        // it can't prove that [byte] will always be positive.
        output.writeCharCode(_codeUnitForDigit((byte & 0xF0) >> 4));
        output.writeCharCode(_codeUnitForDigit(byte & 0x0F));

        if (byteNumber == line.length - 1 && byteNumber < bytesPerLine - 1) {
          for (var i = byteNumber; i < bytesPerLine - 1; ++i) {
            output.write('   ');
          }
        }
      });

      if (showText) {
        output.write(sectionDelimiter);
        output.write('|');
        line.forEachIndexed((byteNumber, byte) {
          if (byte >= 0x20 && byte <= 0x7E) {
            output.writeCharCode(byte);
          } else {
            output.write('.');
          }
        });
        output.write('|');
      }
    });
  }

  /// Returns the ASCII/Unicode code unit corresponding to the hexadecimal digit
  /// [digit].
  int _codeUnitForDigit(int digit) =>
      digit < 10 ? digit + 0x30 : digit + (uppercase ? 0x41 : 0x61) - 10;
}
