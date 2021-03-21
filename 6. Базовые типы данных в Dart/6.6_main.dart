void main() {

//___________Example 1_______________________
  Runes textStr = new Runes('Hello, World!');

  print(
      textStr); // (72, 101, 108, 108, 111, 44, 32, 87, 111, 114, 108, 100, 33)

//____________Example 2_____________________
  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input));

//____________Example 3______________________

  Runes input = new Runes('\u{1f60e}');

  print(new String.fromCharCodes(input));
}