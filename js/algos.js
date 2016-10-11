function longest(array){
  var long_word=""
  for (i in array){
    if (long_word.length < array[i].length){
      long_word=(array[i])
    }
  }
  console.log(long_word)
}

function common_key(obj1,obj2){
  var result = false
  for (i in obj1){
    for (i2 in obj2){
      if (i == i2){
        result = true
      }
    }
  }
return result
}


function randWord(num){
  var textFin="";
  var words=[];
  var alpha = "abcdefghijklmnopqrstuvwxyz";

  for (var i =0; i<num;i++){
    var randnum = Math.floor(Math.random()*((10 -1)))+1;

    for (var t=0; t<randnum; t++){
      var randLet = alpha[Math.floor(Math.random()*((alpha.length -1)-0))+0];
      textFin += randLet;
    }
    words.push(textFin);
    textFin="";
  }
  return words
}

// function word_array(num){
//   var words = "abcdefghijklmnopqrstuvwxyz".split("")
//   var words_array=[]
//   for (var i=0; i<num; i++){
//     words_array.push(words[Math.floor(Math.random() * words.length)])
//   }
// return words_array
// }
console.log("--------part 1 ---------")
console.log(common_key({name: "Steven", age: 54},{name: "Tamir", age: 54}))
console.log(common_key({name: "Steven", age: 54},{category: "jobs", year: 2015}))

console.log("--------part 2 ---------")
longest(["long phrase","longest phrase","longer phrase"])
longest(["aa","bbb","cccc"])

console.log("--------part 3 ---------")
console.log(randWord(3))

console.log("--------part 4 ---------")




