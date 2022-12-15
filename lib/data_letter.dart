import "dart:math";

var list = ["a", "i", "u", "e", "o"];

// generates a new Random object
final _random = Random();

// generate a random index based on the list length
// and use it to retrieve the element
var randomItem = list[_random.nextInt(list.length)];
