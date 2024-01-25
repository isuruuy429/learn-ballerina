import ballerina/io;

public function main() {

    //defining arrays

    //only this can be extended, elements can be pushed or removed. 
    string[] names = ["John", "Mary", "Tom"];

    //fixed length, cannot be extended
    string[3] names2 = ["John", "Mary", "Tom"];

    //fixed length, cannot be extended
    string[*] names3 = ["John", "Mary", "Tom", "Peter"];

    names.push("Peter");
    io:println(names.length());

    //prints whole array
    io:println(names);

    //prints each element
    names.forEach(name => io:println(name));

    foreach string name in names {
        io:println(name);
    }

    //update array
    names3[2] = "Malavige";
    names3.forEach(name => io:println(name));

    //removing an element from an array
    string poped = names.pop();
    io:println(poped);

    //merge arrays
    string[] town1 = ["Boralesgamuwa", "Dehiwala"];
    string[] town2 = ["Kottawa", "Homagama"];

    string[] colomboTowns = [...town1, ...town2];
    io:println(colomboTowns);

    //multidimensional arrays
    string[] students1 = ["Isuru", "Ishari", "Osh"];
    string[] students2 = ["Kothmini", "Malithi", "Yashaya"];

    string[][] twoRows = [students1, students2];
    io:println(twoRows);

    //defining multidimensional arrays
    string[2][3] twoRows2= [
        ["Isuru", "Ishari", "Osh"],
        ["Kothmini", "Malithi", "Yashaya"]
    ];

    string student = twoRows2[1][0];
    io:println(student);


    //functions in array
    string[] guys = [];
    guys.push("Supun");
    guys.push("Iwantha", "Yukthi");
    guys.forEach(name => io:println(name));

    //filter elements
    string[] vibes = ["Isuru", "Iwantha", "Indraraj", "Yukthi", "Supun"];
    string[] iVibes = vibes.filter(vibe => vibe.startsWith("I"));
    io:println(iVibes);

    _ = iVibes.remove(2);
    io:println(iVibes);

}
