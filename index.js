const fs = require('fs');
const path = require('path');
console.log(path.resolve(__dirname, './hosts'));
module.exports = fs.readFileSync(path.resolve(__dirname, './hosts'), 'utf8');
