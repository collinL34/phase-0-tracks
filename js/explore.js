// create a function that take in a string as an arguement and reverses the letters.
 // create a variable that splits the string into char then you must call the method reverse on it and then return th joined variable
 // or create a function that manualy changes the string
 // first create a secondary variable that we will later turn into the final result of the reversed string
 // then create a for loop that loops over the string that was passed into the method
 // then add the characters from the old string in reverse order into the new var and close the loops and return the new string

function stringReverse(string) {
  return string.split('').reverse().join('')
}

stringReverse('hello')

function string(strings) {
  var newStr = '';
  for(var i = strings.length -1; i >= 0;i--) {
    newStr += strings[i];
  };
  return newStr;
};
string('hello');