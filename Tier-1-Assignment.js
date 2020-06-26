/* 
    Problem Set:

    A.) Create a function that will return the datatype
    parameter.
        Value: 10 points

    B.) Create a function that will take in a variable
    number of arguments and return their product.
        Value: 20 points

    C.) Create a function that iterates over an integer
    array and returns their sum.
        Value: 30 points

    D.) Create a function that, given an integer, can
    raise each digit to the power of the overall length
    and return whether the sum of the powers is equal
    to the original integer.
        Value: 40 points

*/

function dataType (input) {
    return typeof input;
};

console.log(dataType(43));      // number
console.log(dataType(true));    // boolean

/* ------------------------------------------------ */

function productValue () {
    let total = 0;
    for (let i = 0; i < arguments.length; i++) {
        total += arguments[i];
        
    }
    return total;
}

console.log(productValue(1, 2, 3, 5, 4, 10));   // 25
console.log(productValue(123, 165, (2**3)));    // 296

/* ------------------------------------------------ */

let array1 = [1, 2, 3, 4, 5];
let array2 = [12, 14, 16, 18];
function totalSum (array) {
    return array.reduce((a, b) => {
        return a + b
    }, 0)
};

console.log(totalSum(array1));  // 15
console.log(totalSum(array2));  // 60

/* ------------------------------------------------ */



