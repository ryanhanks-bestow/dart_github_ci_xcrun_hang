import 'dart:io';

import 'package:test/test.dart';

void main() {
  group("Deep link launches app > iOS >", () {
    test("xcrun sanity check", () async {
      print("Running xcrun Process sanity check.");

      // print("Env variables:");
      // print(Process.runSync('env', []).stdout);

      print("Running command to list simulators...");
      final result = await Process.run(
        "sh",
        [
          "-c",
          "xcrun",
          "simctl",
          "list",
          "--verbose",
        ],
      );

      // process.stdout.transform(utf8.decoder).listen((data) {
      //   print("STDOUT:\n$data");
      // });
      // process.stderr.transform(utf8.decoder).listen((data) {
      //   print("STDERR:\n$data");
      // });
      // print("The process started...");
      // print("Closing stdin");
      // process.stdin.close();
      // print("Waiting for exit code...");
      // final exitCode = await process.exitCode;
      // print("The xcrun call returned with exit code: $exitCode");
      print("The xcrun call returned with exit code: ${result.exitCode}");
    });
  });
}
