const readline = require('readline')
const rl = readline.createInterface({
    input:process.stdin,
    output: process.sdout,
    terminal: false,
})

rl.on('line', function(line) {
    console.log("Line", line.split(' ').reduce((sum, x) => sum + +x, 0))
})
