function processData(input) {
    input = input.split('\n')[1];
    var lvl = 0;
    var valleys = 0;
    for (i = 0; i < input.length; i++) {
        if (lvl === 0 && input[i] == 'D') {
            valleys += 1;
        };
        if (input[i] == 'D') {
            lvl -= 1;
        } else {
            lvl += 1;
        }
    };
    console.log(valleys);
}

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
    processData(_input);
});
