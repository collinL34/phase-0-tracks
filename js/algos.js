// create a function called longest word
// create a variable that represents the first idx of the array and then loop through the array and compare the length of the words to the predetermined greatest word variable
// and if find a word with greater length reassign the variable to the new word and repeat
// until the loop is finished looping through the array and has the final longest word
// return the longest word

function longestWord(array) {
  var longest = array[0];
  for(var i = 0; i < array.length;i++) {
    var arrayWords = array[i];
    if (arrayWords.length >= longest.length) {
      longest = arrayWords;
    }
  };
  return longest;
};

function matchFinder(object1,object2) {
  for (var key in object1) {
      for(var value in object2) {
        if (value == key) {
          console.log(true);
        } else {
          console.log(false);
        };
      }
    };
};

var array = []

function randomWord(integer) {
  var randomString = '';
  var alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  var counter = 0
  while (counter < integer) {
    var idx = Math.floor(Math.random() * alphabet.length)
    randomString += alphabet[idx];
    console.log(randomString);
    counter += 1
  };
  array.push(randomString);
  console.log(array);
}

randomWord(3)
randomWord(10)

var i = 0

do{
  randomWord(Math.floor(Math.random() * 10))
  i++;
}
while (i <= 10);

console.log(longestWord(array));

var third = {name: 'collin', age: 21}
var fourth = {name: 'collin', age: 21}
var first = {name: "Steven", age: 54};
var second = {name: "Tamir", age: 54};
matchFinder(first,second);
matchFinder(first,third);
matchFinder(third,fourth)


var longestArray = ['stop','longest','sam hell','stupid dog you making me look bad']
var secondArray = ['longest','short','heavy']
console.log(longestWord(longestArray));
console.log(longestWord(secondArray))