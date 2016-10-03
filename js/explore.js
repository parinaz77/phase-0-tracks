// create a for loop to go over each letter of the string, from the beginning
// then each letter is getting added to a new string
// the new letter gets added from the begining of the new string
// at the end we will have a reversed string

function reverse(str){
  var new_str="";
  for (var i=0; i<str.length; i+=1){
    new_str = str[i] + new_str;
  }
  if (1==1){
    return new_str;
  }
}
console.log(reverse("hello"));