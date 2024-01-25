//Tuples are suitable to create lists with multiple types. Tuples are useful when returning multiple values from a function.

import ballerina/io;

public function main() {
    
    [string, string, int]james = ["James", "Newyork", 21];
    io:println(james);

    int age = getPersonDetails()[0];
    io:println(age);

    //Add more friends to the tuple. We can add any number of values to the tuple.
    [string, string, int, string...]friends = ["Isuru", "Boralesgamuwa", 34, "Iwantha", "Indraraj", "Yukthi", "Malavi"];

    [string, string, int, string...]guys = ["Kazza", "Modara", 34];
    string[] moreGuys = ["Wassa", "Threethal", "J Ball", "Lal", "Kapur, Hector"];

    foreach string guy in moreGuys {
        guys.push(guy); 
    }

    io:println(guys);

    //filler values
    int[3] numbers = [];
    io:println(numbers);

    [boolean, int...] scores = [];
    io:println(scores);

}

function getPersonDetails() returns [int, boolean]{
    return [21, true];
}
