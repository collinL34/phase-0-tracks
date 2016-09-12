// create a var that holds an array to store the reversed strings
// create a function that take in a string as an arguement and reverses the letters.
 // create a variable that splits the string into char then you must call the method reverse on it and then return th joined variable
 // or create a function that manualy changes the string
 // first create a secondary variable that we will later turn into the final result of the reversed string
 // then create a for loop that loops over the string that was passed into the method
 // then add the characters from the old string in reverse order into the new var and close the loops and return the new string

var reverseString = [];

function stringReverse(string) {
  reverseString.push(string)
  return string.split('').reverse().join('')
}


reverseString.push(stringReverse('hello'));

function string(strings) {
  reverseString.push(strings)
  var newStr = '';
  for(var i = strings.length -1; i >= 0;i--) {
    newStr += strings[i];
  };
  return newStr;
};
reverseString.push(string('hello'));

if (patricJane == 'the mentalist') {
  console.log('cool i want to be a pyschic');
}
else {
  console.log('or maybe i should stay in school');
};

patricJane = 'the mentalist';