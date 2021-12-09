let theStagesOfJS = ["confidence", "sadness", "confusion", "realization", "debugging", "satisfaction"];

console.log(theStagesOfJS)


let mapSimpleArray = theStagesOfJS.map(function(item) {
    return item;

};

console.log("Map:", mapSimpleArray);

let mapArrayWithIndex = theStagesOfJS.map(function(item, index) {
    return `Stage ${index}: ${item}`;
  });