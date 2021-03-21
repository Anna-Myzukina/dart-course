import 'dart:io';

import 'dart:async';



void printDailyNewsDigest() {

  File file = new File("dailyNewsDigest.txt");

  Future future = file.readAsString();

  future.then((content) {

  print(content);

  });
}