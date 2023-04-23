# hexdump

A Dart package to display binary data in a human-readable hexadecimal form.  
It provides a `HexDumpEncoder` class that implements [`Converter<List<int>, String>`](https://api.dart.dev/stable/dart-convert/Converter-class.html).

## Usage

```dart
import 'package:hexdump/hexdump.dart';

void main() {
  const hexDumpEncoder = HexDumpEncoder();
}
```

### Example output

```hexdump
00000000    4C 6F 72 65 6D 20 69 70 73 75 6D 20 64 6F 6C 6F    |Lorem ipsum dolo|
00000010    72 20 73 69 74 20 61 6D 65 74 2C 20 63 6F 6E 73    |r sit amet, cons|
00000020    65 63 74 65 74 75 72 20 61 64 69 70 69 73 63 69    |ectetur adipisci|
00000030    6E 67 20 65 6C 69 74 2E 20 4D 6F 72 62 69 20 72    |ng elit. Morbi r|
00000040    68 6F 6E 63 75 73 20 66 65 72 6D 65 6E 74 75 6D    |honcus fermentum|
00000050    20 66 65 72 6D 65 6E 74 75 6D 2E 20 49 6E 74 65    | fermentum. Inte|
00000060    67 65 72 20 6F 72 63 69 20 65 6C 69 74 2C 20 76    |ger orci elit, v|
00000070    6F 6C 75 74 70 61 74 20 61 63 20 69 70 73 75 6D    |olutpat ac ipsum|
00000080    20 65 74 2C 20 66 65 72 6D 65 6E 74 75 6D 20 61    | et, fermentum a|
00000090    6C 69 71 75 65 74 20 6C 69 62 65 72 6F 2E 20 43    |liquet libero. C|
000000A0    72 61 73 20 64 6F 6C 6F 72 20 61 75 67 75 65 2C    |ras dolor augue,|
000000B0    20 6C 75 63 74 75 73 20 65 67 65 74 20 65 6C 69    | luctus eget eli|
000000C0    74 20 61 2C 20 65 6C 65 6D 65 6E 74 75 6D 20 69    |t a, elementum i|
000000D0    61 63 75 6C 69 73 20 6D 65 74 75 73 2E 20 44 75    |aculis metus. Du|
000000E0    69 73 20 63 75 72 73 75 73 20 74 72 69 73 74 69    |is cursus tristi|
000000F0    71 75 65 20 64 75 69 2C 20 71 75 69 73 20 62 6C    |que dui, quis bl|
00000100    61 6E 64 69 74 20 74 75 72 70 69 73 2E 20 4E 61    |andit turpis. Na|
00000110    6D 20 61 63 20 76 61 72 69 75 73 20 6E 65 71 75    |m ac varius nequ|
00000120    65 2E 20 50 65 6C 6C 65 6E 74 65 73 71 75 65 20    |e. Pellentesque |
00000130    61 63 20 74 75 72 70 69 73 20 75 6C 74 72 69 63    |ac turpis ultric|
00000140    69 65 73 2C 20 64 61 70 69 62 75 73 20 65 72 6F    |ies, dapibus ero|
00000150    73 20 73 65 64 2C 20 72 75 74 72 75 6D 20 6C 65    |s sed, rutrum le|
00000160    6F 2E 20 53 65 64 20 65 73 74 20 6E 69 62 68 2C    |o. Sed est nibh,|
00000170    20 76 65 68 69 63 75 6C 61 20 64 69 67 6E 69 73    | vehicula dignis|
00000180    73 69 6D 20 6D 65 74 75 73 20 61 74 2C 20 70 6F    |sim metus at, po|
00000190    73 75 65 72 65 20 76 65 73 74 69 62 75 6C 75 6D    |suere vestibulum|
000001A0    20 61 72 63 75 2E 20 51 75 69 73 71 75 65 20 6E    | arcu. Quisque n|
000001B0    75 6E 63 20 73 61 70 69 65 6E 2C 20 75 6C 74 72    |unc sapien, ultr|
000001C0    69 63 69 65 73 20 76 69 74 61 65 20 6C 61 63 75    |icies vitae lacu|
000001D0    73 20 65 75 2C 20 63 6F 6E 73 65 63 74 65 74 75    |s eu, consectetu|
000001E0    72 20 66 61 75 63 69 62 75 73 20 69 70 73 75 6D    |r faucibus ipsum|
000001F0    2E 20 4E 61 6D 20 76 69 74 61 65 20 70 65 6C 6C    |. Nam vitae pell|
00000200    65 6E 74 65 73 71 75 65 20 66 65 6C 69 73 2E 20    |entesque felis. |
00000210    44 6F 6E 65 63 20 65 66 66 69 63 69 74 75 72 20    |Donec efficitur |
00000220    74 65 6C 6C 75 73 20 65 75 20 6D 61 73 73 61 20    |tellus eu massa |
00000230    6F 72 6E 61 72 65 20 63 6F 6D 6D 6F 64 6F 2E       |ornare commodo.|
```
